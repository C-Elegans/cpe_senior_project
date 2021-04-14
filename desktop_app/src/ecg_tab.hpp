#ifndef ECG_TAB_H
#define ECG_TAB_H
#include <gtkmm/box.h>
#include <gtkmm/label.h>

#include "graph_area.hpp"

class ECGTab : public Gtk::Box {
public:
    ECGTab();

    Gtk::Label m_Label;

    GraphArea m_graphArea;

};

#endif
    
