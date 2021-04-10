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

    m_TreeView.append_column("Temp (F)", m_Columns.col_temperature);

    start_button.signal_clicked().connect(sigc::mem_fun(*this, &TemperatureTab::on_start_button_clicked));
    read_button.signal_clicked().connect(sigc::mem_fun(*this, &TemperatureTab::on_read_button_clicked));


    pack_start(m_ScrolledWindow);

    pack_start(m_button_box);

    m_button_box.pack_start(start_button);
    m_button_box.pack_end(read_button);


    show_all_children();

}

void TemperatureTab::add_row(float temp, int time){

    Gtk::TreeModel::Row row = *(m_refTreeModel->append());

    row[m_Columns.col_temperature] = temp;

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
    auto datapoints = das.retrieve_temp_data();

    m_refTreeModel->clear();
    for(auto &dp: datapoints){
	add_row(dp.value, dp.time);
    }
    show_all_children();

}
