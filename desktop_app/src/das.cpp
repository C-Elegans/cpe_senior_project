#include "das.hpp"
#include <stdio.h>
#include <assert.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/select.h>
#include <termios.h>

#include <regex>
#include <iostream>


DasControl::DasControl(const std::string &path){
    struct termios termios;
    int fd = open(path.c_str(), O_RDWR);
    serial_file = fdopen(fd, "r+");
    setbuf(serial_file, NULL);
    tcgetattr(fd, &termios);
    termios.c_lflag &= ~(ECHO);
    tcsetattr(fd, TCSANOW, &termios);
    // int flags = fcntl(fileno(serial_file), F_GETFL, 0);
    // fcntl(fileno(serial_file), F_SETFL, flags | O_NONBLOCK);
}

DasControl::DasControl(){
    serial_file = NULL;
}

int DasControl::write_to_device(const char *buf, size_t bytes){
    int res = fwrite(buf, 1, bytes, serial_file);
    fflush(serial_file);
    usleep(10000);
    printf("wrote ");
    fwrite(buf, 1, bytes, stdout);
    printf(" to device\n");
    fflush(stdout);
    return res;
}


std::vector<std::string> DasControl::retrieve_data(uint8_t sel){
    assert(sel > 0 && sel <= 7);
    std::vector<std::string> ret;
    char sel_char = sel + '0';

    write_to_device(&sel_char, sizeof(char));


    char *line = NULL;
    size_t len = 0;
    fd_set set;
    FD_ZERO(&set);
    FD_SET(fileno(serial_file), &set);
    struct timeval timeout;
    timeout.tv_sec = 0;
    timeout.tv_usec = 100 * 1000; // 100ms
    while(1) {
	int rv = select(fileno(serial_file) + 1, &set, NULL, NULL, &timeout);
	// if(rv == 1 && errno == EAGAIN)
	//     continue;
	// if(rv == 1)
	//     perror("select");
	if(rv == 0)
	    break;
	
	ssize_t bytes = getline(&line, &len, serial_file);
	if(bytes == 0) continue;
	if(line[0] != '\n'){
	    ret.emplace_back(line);
	}
    }
    if(line)
	free(line);
    
    return ret;
}

std::vector<DataPoint> parse_lines(std::vector<std::string> lines){
    std::vector<DataPoint> ret;
    std::regex header("^.+:");
    std::regex rx("\t([0-9]+),([0-9.]+)\n?");
    std::match_results<std::string::const_iterator> mr;

    for(auto it = lines.begin(); it != lines.end(); ++it){
	std::regex_search(*it, mr, header);
	if(mr.size() != 0) continue;

	std::regex_search(*it, mr, rx);
	//printf("%s", it->c_str());
	if(mr.size() != 3){
	    printf("Error parsing line: %s\n", it->c_str());
	}
	DataPoint dp;
	dp.time = std::stoi(mr[1]);
	dp.value = std::stof(mr[2]);
	ret.push_back(dp);
    }

    return ret;
}

std::vector<DataPoint> DasControl::retrieve_temp_data(void){
    std::vector<std::string> lines = retrieve_data(1);
    for(auto &line: lines){
	std::cout << "read line: " << line ;
    }
    return parse_lines(lines);
}

void DasControl::acquire_temp_data(void){
    const char c = 'p';
    write_to_device(&c, sizeof(c));
}

void DasControl::set_time_min(uint32_t time_min){
    char buf[30];
    size_t bytes = snprintf(buf, sizeof(buf), "t%u\n", time_min);
    write_to_device(buf, bytes);
}
void DasControl::set_time_max(uint32_t time_max){
    char buf[30];
    size_t bytes = snprintf(buf, sizeof(buf), "T%u\n", time_max);
    write_to_device(buf, bytes);
}
void DasControl::set_num_items(uint32_t num_items){
    char buf[30];
    size_t bytes = snprintf(buf, sizeof(buf), "n%u\n", num_items);
    write_to_device(buf, bytes);
}
