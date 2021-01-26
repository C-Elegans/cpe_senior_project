#ifndef HELLO_HPP
#define HELLO_HPP

#include <gtkmm/button.h>
#include <gtkmm/window.h>

class Hello : public Gtk::Window {
public:
    Hello();
    ~Hello() override;

protected:
    void on_button_clicked();

    Gtk::Button button;
};

#endif
    
