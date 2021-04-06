#include "temperature_tab.hpp"

TemperatureTab::TemperatureTab()
    : m_Label("TemperatureTab Label"){

    pack_start(m_Label);
    show_all_children();

}
