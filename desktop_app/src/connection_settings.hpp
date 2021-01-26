#ifndef CONNECTION_SETTINGS_HPP
#define CONNECTION_SETTINGS_HPP

#include <gtkmm/button.h>
#include <gtkmm/window.h>
#include <gtkmm/comboboxtext.h>

class ConnectionSettings : public Gtk::Window {
public:
    ConnectionSettings();
    ~ConnectionSettings() override;

protected:
    Gtk::ComboBoxText m_combo;

    void on_combo_changed();
    void set_serial_ports();

    
};

#endif
    
