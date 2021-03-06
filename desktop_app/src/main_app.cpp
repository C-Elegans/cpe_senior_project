#include "main_app.hpp"
#include "connection_settings.hpp"
#include <iostream>

MainApp::MainApp() :
    tempTab(das),
    ecgTab(das),
    oximeterTab(das)
{
    auto dialog = ConnectionSettingsDialog();
    dialog.run();

    auto path  = dialog.get_settings().path;
    das = DasControl(path);
	

    set_title("SPAMM WSP Desktop Companion");
    set_default_size(600, 600);

    m_Notebook.set_border_width(5);

    m_Notebook.append_page(tempTab, "Temperature");
    m_Notebook.append_page(ecgTab, "ECG");
    m_Notebook.append_page(oximeterTab, "Pulse Oximeter");

    add(m_Notebook);
    show_all_children();
}

MainApp::~MainApp() {
}
