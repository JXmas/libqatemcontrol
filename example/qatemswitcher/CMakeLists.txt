include_directories(${CMAKE_SOURCE_DIR})
qt5_wrap_cpp(MAINWINDOW_SRC mainwindow.h)
qt5_wrap_ui(MAINWINDOW_UI mainwindow.ui)
add_executable(qatemswitcher main.cpp mainwindow.cpp ${MAINWINDOW_SRC} ${MAINWINDOW_UI})
target_link_libraries(qatemswitcher 
    qatemcontrol 
    Qt5::Widgets)
    

install(TARGETS qatemswitcher DESTINATION bin)
