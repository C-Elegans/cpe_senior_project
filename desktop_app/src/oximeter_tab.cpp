#include "oximeter_tab.hpp"


OximeterTab::OximeterTab(DasControl &das)
    :  Box(Gtk::ORIENTATION_HORIZONTAL),
       das(das),
       m_Label("OximeterTab Label"),
       m_button_box(Gtk::ORIENTATION_VERTICAL),
       start_button("Start Pulse Oximeter"),
       stop_button("Stop Pulse Oximeter"),
       measure_button("Measure SPO2"),
       read_button("Read Oximeter Data")
{
    m_ScrolledWindow.add(m_TreeView);
    m_ScrolledWindow.set_min_content_width(150);
    // Create the oximeter list
    m_ScrolledWindow.set_policy(Gtk::POLICY_AUTOMATIC, Gtk::POLICY_AUTOMATIC);

    m_refTreeModel = Gtk::ListStore::create(m_Columns);
    m_TreeView.set_model(m_refTreeModel);
    // Add a row
    add_row(95.0, 0);
    add_row(107.8, 1);

    m_TreeView.append_column("SPO2 (%)", m_Columns.col_spo2);
    m_TreeView.append_column("Time", m_Columns.col_time);

    m_refTreeModel->set_sort_column(m_Columns.col_time, Gtk::SortType::SORT_DESCENDING);

    start_button.signal_clicked().connect(sigc::mem_fun(*this, &OximeterTab::on_start_button_clicked));
    stop_button.signal_clicked().connect(sigc::mem_fun(*this, &OximeterTab::on_stop_button_clicked));
    measure_button.signal_clicked().connect(sigc::mem_fun(*this, &OximeterTab::on_measure_button_clicked));
    read_button.signal_clicked().connect(sigc::mem_fun(*this, &OximeterTab::on_read_button_clicked));


    pack_start(m_ScrolledWindow);

    pack_start(m_button_box, Gtk::PACK_SHRINK);

    m_button_box.pack_start(start_button, Gtk::PACK_SHRINK);
    m_button_box.pack_start(stop_button, Gtk::PACK_SHRINK);
    m_button_box.pack_start(measure_button, Gtk::PACK_SHRINK);
    m_button_box.pack_start(read_button, Gtk::PACK_SHRINK);


    show_all_children();

}

void OximeterTab::add_row(float spo2, uint32_t time){

    Gtk::TreeModel::Row row = *(m_refTreeModel->append());

    row[m_Columns.col_spo2] = spo2;

    row[m_Columns.col_time] = time;
}



void OximeterTab::on_start_button_clicked(){
    printf("Start Button Clicked\n");
}
void OximeterTab::on_stop_button_clicked(){
    printf("Stop Button Clicked\n");
}
void OximeterTab::on_measure_button_clicked(){
    printf("Measure Button Clicked\n");
}

void OximeterTab::on_read_button_clicked(){
    printf("Read Button Clicked\n");
    read_data_from_device();
}

void OximeterTab::read_data_from_device(){
    // das.set_time_min(0);
    // das.set_time_max(2000000000);
    // das.set_num_items(10);
    auto datapoints = das.retrieve_temp_data();

    m_refTreeModel->clear();
    for(auto &dp: datapoints){
	add_row(dp.value, dp.time);
    }
    show_all_children();

}
