#include <stdio.h>
#include <gtkmm/application.h>
#include "hello.hpp"


int main(int argc, char** argv){
    auto app = Gtk::Application::create("org.gtkmm.examples.base");
    Hello window;
    return app->run(window, argc, argv);
}
