#include <stdio.h>
#include <gtkmm/application.h>
#include "connection_settings.hpp"


int main(int argc, char** argv){
    auto app = Gtk::Application::create("org.gtkmm.examples.base");
    ConnectionSettings window;
    return app->run(window, argc, argv);
}
