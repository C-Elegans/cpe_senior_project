#include "main_app.hpp"
#include "connection_settings.hpp"
#include <iostream>

MainApp::MainApp() :
    serial(NULL)
{
    // auto dialog = ConnectionSettingsDialog();
    // dialog.run();

    set_title("SPAMM WSP Desktop Companion");
    set_default_size(400, 200);

    m_Notebook.set_border_width(5);

    m_Notebook.append_page(tempTab, "Temperature");
    m_Notebook.append_page(ecgTab, "ECG");

    add(m_Notebook);
    show_all_children();
}

MainApp::~MainApp() {
    if(serial){
	fclose(serial);
    }
}
