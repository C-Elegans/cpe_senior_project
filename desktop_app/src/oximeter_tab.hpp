#ifndef OXIMETER_TAB_H
#define OXIMETER_TAB_H
#include <gtkmm/box.h>
#include <gtkmm/grid.h>
#include <gtkmm/label.h>
#include <gtkmm/button.h>
#include <gtkmm/liststore.h>
#include <gtkmm/treeview.h>
#include <gtkmm/scrolledwindow.h>
#include <glib.h>

#include "das.hpp"

class OximeterTab : public Gtk::Box {
public:
    OximeterTab(DasControl &);

    void add_row(float spo2, uint32_t time);

protected:

    DasControl &das;

    Gtk::Label m_Label;

    Gtk::Box m_button_box;
    Gtk::Button start_button;
    Gtk::Button stop_button;
    Gtk::Button measure_button;
    Gtk::Button read_button;

    void on_start_button_clicked(void);
    void on_stop_button_clicked(void);
    void on_read_button_clicked(void);
    void on_measure_button_clicked(void);

    void read_data_from_device(void);


    // Stuff for oximeter history

    class SPO2ModelColumns : public Gtk::TreeModel::ColumnRecord {
    public:
	SPO2ModelColumns() {
	    add(col_time);
	    add(col_spo2);

	}
	Gtk::TreeModelColumn<float> col_spo2;
	Gtk::TreeModelColumn<uint32_t> col_time;

    };

    SPO2ModelColumns m_Columns;
    Gtk::ScrolledWindow m_ScrolledWindow;
    Gtk::TreeView m_TreeView;
    Glib::RefPtr<Gtk::ListStore> m_refTreeModel;


};

#endif
    
