#include "ecg_tab.hpp"
#include <glibmm.h>

ECGTab::ECGTab(DasControl &das)
    : das(das),
      m_button_box(Gtk::ORIENTATION_VERTICAL),
      start_button("Start ECG"),
      stop_button("Stop ECG"){

    m_button_box.pack_start(start_button, Gtk::PACK_SHRINK);
    m_button_box.pack_start(stop_button, Gtk::PACK_SHRINK);

    start_button.signal_clicked().connect(sigc::mem_fun(*this, &ECGTab::on_start_button_clicked));
    stop_button.signal_clicked().connect(sigc::mem_fun(*this, &ECGTab::on_stop_button_clicked));

    m_graphArea.set_data({0, 0.5, 0.2, 0.8, 0.9, 0.3, 0.1, -0.5});

    set_spacing(15);
    pack_start(m_graphArea);

    pack_start(m_button_box, Gtk::PACK_SHRINK);
    show_all_children();

}

bool ECGTab::on_timeout(int timer_num){
    printf("Timeout\n");
    std::vector<float> data;
    for(int i=0; i<64; i++){
	data.push_back(das.read_ecg_datapoint());
    }
    m_graphArea.set_data(data);
    
    return true;
}
    
void ECGTab::on_start_button_clicked(void){
    printf("ECG Start\n");

    m_timer_slot = sigc::bind(sigc::mem_fun(*this, &ECGTab::on_timeout), 0);
    m_timer_conn = Glib::signal_timeout().connect(m_timer_slot, 500);
    das.start_ecg();
    

}
void ECGTab::on_stop_button_clicked(void){
    printf("ECG Stop\n");
    m_timer_conn.disconnect();
    das.stop_ecg();

}
