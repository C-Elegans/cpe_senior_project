#include "main_app.hpp"
#include "connection_settings.hpp"
#include <iostream>

MainApp::MainApp() :
    m_Label1("Temperature Tab"),
    m_Label2("ECG Tab")
{
    // auto dialog = ConnectionSettingsDialog();
    // dialog.run();

    set_title("SPAMM WSP Desktop Companion");
    set_default_size(400, 200);

    m_Notebook.set_border_width(5);
    m_Notebook.append_page(m_Label1, "Temperature");
    m_Notebook.append_page(m_Label2, "ECG");

    add(m_Notebook);
    show_all_children();
}

MainApp::~MainApp() {
    if(serial){
	fclose(serial);
    }
}
