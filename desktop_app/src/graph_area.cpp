#include "graph_area.hpp"
#include <cairomm/context.h>

GraphArea::GraphArea(){

}

GraphArea::~GraphArea() {

}

void GraphArea::set_data(const std::vector<float> &data_in){
    data = data_in;
    queue_draw();
}

void GraphArea::force_redraw(void){
    auto win = get_window();
    if(win){
	Gtk::Allocation allocation = get_allocation();
	Gdk::Rectangle r(0, 0, allocation.get_width(), allocation.get_height());
	win->invalidate_rect(r, false);
    }
}

bool GraphArea::on_draw(const Cairo::RefPtr<Cairo::Context> & cr) {

    Gtk::Allocation allocation = get_allocation();
    const int width = allocation.get_width();
    const int height = allocation.get_height();

    size_t nitems = data.size();
    float x_step = (float)width/(nitems-1);

    cr->set_line_width(2.0);

    for(size_t i = 0; i<nitems; i++){
	float data_val = data[i];
	float data_height = (1-data_val) * (height/2.0);
	if(i == 0){
	    cr->move_to(0, data_height);
	}
	else {
	    cr->line_to(i*x_step, data_height);
	    cr->move_to(i*x_step, data_height);
	}
    }
    cr->stroke();

    return false;
}
