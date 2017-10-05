cmake_minimum_required(VERSION 3.6.0)
project(qwm)

add_subdirectory("${PROJECT_SOURCE_DIR}/external/SFML")

set(EXECUTABLE_NAME "qwm-game")
add_executable(${EXECUTABLE_NAME} "src/main.cpp")

set_property(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} PROPERTY VS_STARTUP_PROJECT ${EXECUTABLE_NAME})

target_link_libraries(qwm-game sfml-system sfml-window sfml-graphics sfml-audio)

target_include_directories(qwm-game PRIVATE
	"${PROJECT_SOURCE_DIR}/external/SFML/include"
	"${PROJECT_SOURCE_DIR}/external"
	"${PROJECT_SOURCE_DIR}/include"
)
