#ifndef MAIN_APP_HPP
#define MAIN_APP_HPP

#include <gtkmm/button.h>
#include <gtkmm/window.h>
#include <gtkmm/box.h>
#include <gtkmm/scrolledwindow.h>
#include <gtkmm/textview.h>
#include <stdio.h>

class MainApp : public Gtk::Window {
public:
    MainApp();
    ~MainApp() override;

protected:
    FILE *serial;

    Gtk::Box m_vbox;
    Gtk::ScrolledWindow m_scrolled_window;
    Gtk::TextView m_text_view;
};

#endif
    
