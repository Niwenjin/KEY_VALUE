cmake_minimum_required(VERSION 3.5)

project(Key_Value)

set(CMAKE_CXX_STANDARD 11)

add_executable(key_value main.cpp)

target_link_libraries(key_value readline)
