cmake_minimum_required(VERSION 3.10)
set(PROJECT_NAME desktop-app)
project(${PROJECT_NAME})

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -std=c++11")

find_package(PkgConfig)
pkg_check_modules(GTKMM gtkmm-3.0)
include_directories(${GTKMM_INCLUDE_DIRS})
link_directories(${GTMMM_LIBRARY_DIRS})

include_directories(src)

file(GLOB SOURCES "${PROJECT_SOURCE_DIR}/src/*.cpp")

add_executable(${PROJECT_NAME} ${SOURCES})
target_link_libraries(${PROJECT_NAME} ${GTKMM_LIBRARIES})
