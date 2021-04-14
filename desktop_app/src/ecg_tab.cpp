#include "ecg_tab.hpp"

ECGTab::ECGTab()
    : m_button_box(Gtk::ORIENTATION_VERTICAL),
     start_button("Start ECG") {

    m_button_box.pack_start(start_button, Gtk::PACK_SHRINK);

    m_graphArea.set_data({0, 0.5, 0.2, 0.8, 0.9, 0.3, 0.1, -0.5});

    set_spacing(15);
    pack_start(m_graphArea);

    pack_start(m_button_box, Gtk::PACK_SHRINK);
    show_all_children();

}
