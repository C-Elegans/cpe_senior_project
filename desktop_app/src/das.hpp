#ifndef DAS_H
#define DAS_H
#include <vector>
#include <string>
#include <stdio.h>
#include <stdint.h>

struct DataPoint {
    float value;
    uint32_t time;
};

class DasControl {
 public:
    DasControl(const std::string &serial_path);
    DasControl(void);

    std::vector<std::string> retrieve_data(uint8_t sel);
    std::vector<DataPoint> retrieve_temp_data(void);

 protected:
    FILE* serial_file;

};


#endif
