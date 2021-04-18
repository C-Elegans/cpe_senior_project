#ifndef MAIN_APP_HPP
#define MAIN_APP_HPP

#include <gtkmm/button.h>
#include <gtkmm/window.h>
#include <gtkmm/box.h>
#include <gtkmm/scrolledwindow.h>
#include <gtkmm/textview.h>
#include <gtkmm/notebook.h>
#include <glibmm/dispatcher.h>
#include <stdio.h>
#include <thread>

#include "temperature_tab.hpp"
#include "oximeter_tab.hpp"
#include "ecg_tab.hpp"
#include "das.hpp"

class MainApp : public Gtk::Window {
public:
    MainApp();
    ~MainApp() override;

protected:
    DasControl das;

    Glib::Dispatcher m_dispatcher;

    Gtk::Notebook m_Notebook;
    TemperatureTab tempTab;
    ECGTab ecgTab;
    OximeterTab oximeterTab;

    std::thread *m_worker_thread;
};

#endif
    
