cmake_minimum_required(VERSION 3.6.0)
project(qwm)

set(EXECUTABLE_NAME "qwm-game")
add_executable(${EXECUTABLE_NAME} "src/main.cpp")
set_property(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} PROPERTY VS_STARTUP_PROJECT ${EXECUTABLE_NAME})
