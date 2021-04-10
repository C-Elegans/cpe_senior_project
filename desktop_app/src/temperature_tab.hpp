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

class TemperatureTab : public Gtk::Grid {
public:
    TemperatureTab();

    void add_row(float temp, double time);

protected:

    Gtk::Label m_Label;
    Gtk::Button start_button;


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
    
