#include "ecg_tab.hpp"

ECGTab::ECGTab()
    : m_Label("ECGTab Label"){

    m_graphArea.set_data({0, 0.5, 0.2, 0.8, 0.9, 0.3, 0.1, -0.5});

    pack_start(m_graphArea);

    pack_start(m_Label);
    show_all_children();

}
