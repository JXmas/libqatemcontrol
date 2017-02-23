cmake_minimum_required(VERSION 2.8)
project(libqatemcontrol)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTO_MOC ON)
set(CMAKE_BUILD_TYPE Debug)

set(CMAKE_INSTALL_PREFIX ${CMAKE_SOURCE_DIR}/dist)

find_package(Qt5Network)
find_package(Qt5Widgets)
find_package(Qt5Gui)
include_directories(${Qt5Nerworks_INCLUDE_DIRS})
include_directories(${Qt5Gui_INCLUDE_DIRS})

qt5_wrap_cpp( QATEMCONTORL_SRC
libqatemcontrol_global.h
qatemconnection.h
qatemmixeffect.h
qupstreamkeysettings.h
qatemcameracontrol.h
qatemdownstreamkey.h  
qatemtypes.h)

add_library(qatemcontrol SHARED 
qatemconnection.cpp
qatemmixeffect.cpp
qatemcameracontrol.cpp
qatemdownstreamkey.cpp
${QATEMCONTORL_SRC}
)


target_link_libraries(qatemcontrol Qt5::Network Qt5::Widgets Qt5::Gui)
install(TARGETS qatemcontrol DESTINATION lib)
install(FILES libqatemcontrol_global.h
	      qatemconnection.h
	      qatemmixeffect.h
	      qupstreamkeysettings.h
	      qatemcameracontrol.h
	      qatemdownstreamkey.h  
	      qatemtypes.h 
	DESTINATION include)

add_subdirectory(example)

add_subdirectory(cmake)
add_subdirectory(scripts)