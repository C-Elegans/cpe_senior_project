#include "connection_settings.hpp"
#include <iostream>
#include <filesystem>

namespace fs = std::filesystem;

ConnectionSettings::ConnectionSettings() : m_combo(true /*has_entry*/) {
    set_border_width(10);

    set_serial_ports();
    m_combo.set_active(0);
    add(m_combo);

    m_combo.signal_changed().connect(sigc::mem_fun(*this,
						   &ConnectionSettings::on_combo_changed));

    show_all_children();
}

ConnectionSettings::~ConnectionSettings() {}

void ConnectionSettings::on_combo_changed(){
    std::cout << "Combo change, row: " << m_combo.get_active_row_number() <<
	", text: " << m_combo.get_active_text() << "\n";
}


void ConnectionSettings::set_serial_ports(){
    #ifndef _WIN32
    for(auto &p: fs::directory_iterator("/dev/serial/by-id/")) {
	m_combo.append(p.path().string());
    }
    #endif
}
