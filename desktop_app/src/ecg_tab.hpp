#ifndef ECG_TAB_H
#define ECG_TAB_H
#include <gtkmm/box.h>
#include <gtkmm/button.h>
#include <gtkmm/label.h>

#include "graph_area.hpp"

class ECGTab : public Gtk::Box {
public:
    ECGTab();

    Gtk::Box m_button_box;
    Gtk::Button start_button;

    GraphArea m_graphArea;

};

#endif
    
