#ifndef CONNECTION_SETTINGS_HPP
#define CONNECTION_SETTINGS_HPP

#include <gtkmm/button.h>
#include <gtkmm/dialog.h>
#include <gtkmm/label.h>
#include <gtkmm/comboboxtext.h>

class ConnectionSettings : public Gtk::Dialog {
public:
    ConnectionSettings();
    ~ConnectionSettings() override;

protected:
    Gtk::Label m_label_serial_port;
    Gtk::ComboBoxText m_combo;

    Gtk::Button m_save_button;

    void on_combo_changed();
    void on_save();
    void set_serial_ports();

    
};

#endif
    
