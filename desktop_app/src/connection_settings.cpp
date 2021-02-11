#include "connection_settings.hpp"
#include <iostream>
#include <filesystem>
#include "glob.hpp"

namespace fs = std::filesystem;

ConnectionSettingsDialog::ConnectionSettingsDialog() :
    settings(),
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
						   &ConnectionSettingsDialog::on_combo_changed));
    m_save_button.signal_clicked().connect(sigc::mem_fun(*this,
							 &ConnectionSettingsDialog::on_save));

    show_all_children();
}

ConnectionSettingsDialog::~ConnectionSettingsDialog() {}

void ConnectionSettingsDialog::on_combo_changed(){
}

void ConnectionSettingsDialog::on_save(){
  auto text = m_combo.get_active_text();
  std::cout << "Save, serial port: " << m_combo.get_active_text().c_str() << "\n";
  settings.path = text.c_str();
  response(0);
}

ConnectionSettings ConnectionSettingsDialog::get_settings(){
    return settings;
}


void ConnectionSettingsDialog::set_serial_ports(){
    #ifdef _linux
    auto path = "/dev/serial/by-id/";
    if(fs::is_directory(path)){
	for(auto &p: fs::directory_iterator(path)) {
	    m_combo.append(p.path().string());
	}
    }
#else
    auto path = "/dev/tty.*";
    auto files = glob::glob(path);
    for(auto &p: files){
      std::cout << p << "\n";
      m_combo.append(Glib::ustring(p.string().c_str()));
    }
    #endif
}
