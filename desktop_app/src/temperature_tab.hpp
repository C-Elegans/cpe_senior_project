#ifndef TEMPERATURE_TAB_H
#define TEMPERATURE_TAB_H
#include <gtkmm/box.h>
#include <gtkmm/label.h>

class TemperatureTab : public Gtk::Box {
public:
    TemperatureTab();

    Gtk::Label m_Label;

};

#endif
    
