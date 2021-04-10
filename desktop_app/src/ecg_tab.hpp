#ifndef ECG_TAB_H
#define ECG_TAB_H
#include <gtkmm/box.h>
#include <gtkmm/label.h>

class ECGTab : public Gtk::Box {
public:
    ECGTab();

    Gtk::Label m_Label;

};

#endif
    
