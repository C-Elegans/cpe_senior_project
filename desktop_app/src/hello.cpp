#include "hello.hpp"
#include <iostream>

Hello::Hello() : button("Hello World") {
    set_border_width(10);

    // Attach the on_button_clicked function to the button's signal handler
    button.signal_clicked().connect(sigc::mem_fun(*this, &Hello::on_button_clicked));

    // Adds the button to the window
    add(button);
    button.show();
}

Hello::~Hello() {}

void Hello::on_button_clicked() {
    std::cout << "Hello World!\n";
}
