#include "temperature_tab.hpp"


TemperatureTab::TemperatureTab(DasControl &das)
    :  Box(Gtk::ORIENTATION_HORIZONTAL),
       das(das),
       m_Label("TemperatureTab Label"),
       m_button_box(Gtk::ORIENTATION_VERTICAL),
       start_button("Measure Temperature"),
       read_button("Read Temperature Data")
{
    m_ScrolledWindow.add(m_TreeView);
    m_ScrolledWindow.set_min_content_width(150);
    // Create the temperature list
    m_ScrolledWindow.set_policy(Gtk::POLICY_AUTOMATIC, Gtk::POLICY_AUTOMATIC);

    m_refTreeModel = Gtk::ListStore::create(m_Columns);
    m_TreeView.set_model(m_refTreeModel);
    // Add a row
    add_row(95.0, 0);
    add_row(107.8, 1);

    m_TreeView.append_column("Temp (C)", m_Columns.col_tempC);
    m_TreeView.append_column("Temp (F)", m_Columns.col_tempF);
    m_TreeView.append_column("Time", m_Columns.col_time);

    m_refTreeModel->set_sort_column(m_Columns.col_time, Gtk::SortType::SORT_DESCENDING);

    start_button.signal_clicked().connect(sigc::mem_fun(*this, &TemperatureTab::on_start_button_clicked));
    read_button.signal_clicked().connect(sigc::mem_fun(*this, &TemperatureTab::on_read_button_clicked));


    pack_start(m_ScrolledWindow);

    pack_start(m_button_box, Gtk::PACK_SHRINK);

    m_button_box.pack_start(start_button, Gtk::PACK_SHRINK);
    m_button_box.pack_start(read_button, Gtk::PACK_SHRINK);


    show_all_children();

}

void TemperatureTab::add_row(float temp, uint32_t time){

    Gtk::TreeModel::Row row = *(m_refTreeModel->append());

    row[m_Columns.col_tempC] = temp;
    row[m_Columns.col_tempF] = (9.0/5.0*temp) + 32.0;

    row[m_Columns.col_time] = time;

}



void TemperatureTab::on_start_button_clicked(){
    printf("Button Clicked\n");
    das.acquire_temp_data();
    read_data_from_device();
}
void TemperatureTab::on_read_button_clicked(){
    printf("Read Button Clicked\n");
    read_data_from_device();
}

void TemperatureTab::read_data_from_device(){
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
