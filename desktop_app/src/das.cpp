#include "das.hpp"
#include <stdio.h>
#include <assert.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/select.h>

#include <regex>
#include <iostream>


DasControl::DasControl(const std::string &path){
    serial_file = fopen(path.c_str(), "r+");
    setbuf(serial_file, NULL);
    // int flags = fcntl(fileno(serial_file), F_GETFL, 0);
    // fcntl(fileno(serial_file), F_SETFL, flags | O_NONBLOCK);
}

DasControl::DasControl(){
    serial_file = NULL;
}

std::vector<std::string> DasControl::retrieve_data(uint8_t sel){
    assert(sel > 0 && sel <= 7);
    std::vector<std::string> ret;
    char sel_char = sel + '0';

    fwrite(&sel_char, 1, sizeof(sel_char), serial_file);
    fflush(serial_file);
    usleep(10000);


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
    if(lines.size() == 1) return ret;
    std::regex rx("\t([0-9]+),([0-9.]+)\n?");
    std::match_results<std::string::const_iterator> mr;

    for(auto it = lines.begin()+1; it != lines.end(); ++it){
	std::regex_search(*it, mr, rx);
	std::cout << mr.size() << "\n";
	printf("%s", it->c_str());
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
    return parse_lines(lines);
}

void DasControl::acquire_temp_data(void){
    const char c = 'p';
    auto ret = fwrite(&c, 1, sizeof(c), serial_file);
    printf("%lu\n", ret);
    fflush(serial_file);
}
