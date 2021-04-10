#ifndef TEMPERATURE_TAB_H
#define TEMPERATURE_TAB_H
#include <gtkmm/box.h>
#include <gtkmm/grid.h>
#include <gtkmm/label.h>
#include <gtkmm/button.h>
#include <gtkmm/liststore.h>
#include <gtkmm/treeview.h>
#include <gtkmm/scrolledwindow.h>
#include <glib.h>

#include "das.hpp"

class TemperatureTab : public Gtk::Box {
public:
    TemperatureTab(DasControl &);

    void add_row(float temp, int time);

protected:

    DasControl &das;

    Gtk::Label m_Label;

    Gtk::Box m_button_box;
    Gtk::Button start_button;
    Gtk::Button read_button;

    void on_start_button_clicked(void);
    void on_read_button_clicked(void);

    void read_data_from_device(void);


    // Stuff for temperature history

    class TempModelColumns : public Gtk::TreeModel::ColumnRecord {
    public:
	TempModelColumns() {
	    // add(col_time);
	    add(col_temperature);

	}
	Gtk::TreeModelColumn<float> col_temperature;
	// Gtk::TreeModelColumn<double> col_time;

    };

    TempModelColumns m_Columns;
    Gtk::ScrolledWindow m_ScrolledWindow;
    Gtk::TreeView m_TreeView;
    Glib::RefPtr<Gtk::ListStore> m_refTreeModel;


};

#endif
    
