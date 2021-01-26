#include <stdio.h>
#include <gtkmm/application.h>
#include "main_app.hpp"


int main(int argc, char** argv){
    auto app = Gtk::Application::create("org.gtkmm.examples.base");
    MainApp window;
    return app->run(window, argc, argv);
}
