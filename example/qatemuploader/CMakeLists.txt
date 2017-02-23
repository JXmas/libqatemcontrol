include_directories(${CMAKE_SOURCE_DIR})
qt5_wrap_cpp(qatemuploader_SRC qatemuploader.h)
add_executable(qatemuploader main.cpp qatemuploader.cpp ${qatemuploader_SRC})
target_link_libraries(qatemuploader qatemcontrol)

install(TARGETS qatemuploader DESTINATION bin)