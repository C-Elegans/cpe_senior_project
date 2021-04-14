#include "ecg_tab.hpp"

ECGTab::ECGTab()
    : m_Label("ECGTab Label"){

    pack_start(m_Label);
    show_all_children();

}
