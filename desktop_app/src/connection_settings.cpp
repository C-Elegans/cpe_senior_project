#include "connection_settings.hpp"
#include <iostream>
#include <filesystem>

namespace fs = std::filesystem;

ConnectionSettings::ConnectionSettings() :
    m_label_serial_port("Select Serial Port:"),
    m_combo(true /*has_entry*/),
    m_save_button("Save")

{

    set_border_width(10);
    set_default_size(500, 100);

    set_serial_ports();
    m_combo.set_active(0);
    auto *box = get_content_area();

    m_label_serial_port.set_justify(Gtk::JUSTIFY_LEFT);

    box->add(m_label_serial_port);
    box->add(m_combo);
    box->add(m_save_button);

    m_combo.signal_changed().connect(sigc::mem_fun(*this,
						   &ConnectionSettings::on_combo_changed));
    m_save_button.signal_clicked().connect(sigc::mem_fun(*this,
							 &ConnectionSettings::on_save));

    show_all_children();
}

ConnectionSettings::~ConnectionSettings() {}

void ConnectionSettings::on_combo_changed(){
    std::cout << "Combo change, row: " << m_combo.get_active_row_number() <<
	", text: " << m_combo.get_active_text() << "\n";
}

void ConnectionSettings::on_save(){
    std::cout << "Save, serial port: " << m_combo.get_active_text() << "\n";
}



void ConnectionSettings::set_serial_ports(){
    #ifndef _WIN32
    for(auto &p: fs::directory_iterator("/dev/serial/by-id/")) {
	m_combo.append(p.path().string());
    }
    #endif
}
