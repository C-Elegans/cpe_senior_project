#ifndef DAS_H
#define DAS_H
#include <vector>
#include <mutex>
#include <thread>
#include <atomic>
#include <string>
#include <stdio.h>
#include <stdint.h>

struct DataPoint {
    float value;
    uint32_t time;
};


class ECGThread {
public:
    ECGThread(FILE* serial_file, size_t buffer_entries);
    ~ECGThread();

protected:
    FILE *serial_file;
    std::atomic<bool> enabled;

    std::vector<float> ecg_circ_buffer;
    size_t circ_buffer_idx;
    std::mutex mtx;
    std::thread ecg_worker_thread;
    void ecg_thread_work(void);

};

class DasControl {
 public:
    DasControl(const std::string &serial_path);
    DasControl(void);

    std::vector<std::string> retrieve_data(uint8_t sel);
    std::vector<DataPoint> retrieve_temp_data(void);

    void acquire_temp_data(void);
    void set_time_min(uint32_t time_min);
    void set_time_max(uint32_t time_max);
    void set_num_items(uint32_t num_items);

    void start_ecg(size_t buffer_entries);
    void stop_ecg(void);
    float read_ecg_datapoint(void);
    

 protected:
    FILE* serial_file;

    int write_to_device(const char *buf, size_t bytes);
    void read_dummy(void);

    std::unique_ptr<ECGThread> ecgThread;

};


#endif
