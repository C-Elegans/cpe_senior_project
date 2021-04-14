#ifndef ECG_TAB_H
#define ECG_TAB_H
#include <gtkmm/box.h>
#include <gtkmm/button.h>
#include <gtkmm/label.h>
#include "das.hpp"

#include "graph_area.hpp"

class ECGTab : public Gtk::Box {
public:
    ECGTab(DasControl &das);
protected:
    DasControl &das;

    Gtk::Box m_button_box;
    Gtk::Button start_button;
    Gtk::Button stop_button;

    GraphArea m_graphArea;

    bool on_timeout(int timer_num);
    void on_start_button_clicked(void);
    void on_stop_button_clicked(void);
    sigc::connection m_timer_conn;
    sigc::slot<bool> m_timer_slot;

};

#endif
    
