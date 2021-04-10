#include "temperature_tab.hpp"


TemperatureTab::TemperatureTab(DasControl &das)
    :  das(das),
       m_Label("TemperatureTab Label"),
       start_button("Measure Temperature")
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


    add(m_ScrolledWindow);

    add(start_button);


    show_all_children();

}

void TemperatureTab::add_row(float temp, double time){

    Gtk::TreeModel::Row row = *(m_refTreeModel->append());

    row[m_Columns.col_temperature] = temp;

}

void TemperatureTab::on_start_button_clicked(){
    printf("Button Clicked\n");
    auto datapoints = das.retrieve_temp_data();
    for(auto &dp: datapoints){
	printf("%f\n", dp.value);
    }
}
