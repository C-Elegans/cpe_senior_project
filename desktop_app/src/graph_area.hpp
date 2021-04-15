#ifndef GRAPH_AREA_H
#define GRAPH_AREA_H
#include <gtkmm/drawingarea.h>
#include <vector>

class GraphArea : public Gtk::DrawingArea {
public :
    GraphArea();
    virtual ~GraphArea();

    void set_data(const std::vector<float> &data);
protected:
    bool on_draw(const Cairo::RefPtr<Cairo::Context> & cr) override;
    void force_redraw(void);
    std::vector<float> data;

};


#endif
