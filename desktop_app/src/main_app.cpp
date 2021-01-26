#include "main_app.hpp"
#include "connection_settings.hpp"
#include <iostream>

MainApp::MainApp() :
    m_vbox(Gtk::ORIENTATION_VERTICAL)
{
    auto dialog = ConnectionSettingsDialog();
    dialog.run();

    std::cout << dialog.get_settings().path << "\n";
    serial = fopen(dialog.get_settings().path.c_str(), "r");
    if(!serial){
	perror("fopen");
    }

    add(m_vbox);
    m_scrolled_window.add(m_text_view);
    m_scrolled_window.set_policy(Gtk::POLICY_AUTOMATIC, Gtk::POLICY_AUTOMATIC);

    m_vbox.pack_start(m_scrolled_window);

    m_text_view.get_buffer()->set_text("Test");

    show_all_children();
    


}

MainApp::~MainApp() {
    if(serial){
	fclose(serial);
    }
}
