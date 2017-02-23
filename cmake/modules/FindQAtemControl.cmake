# - Try to find QAtemControl
# Once done, this will define
#
#  QAtemControl_FOUND - system has QAtemControl
#  QAtemControl_INCLUDE_DIRS - the QAtemControl include directories
#  QAtemControl_LIBRARIES - link these to use QAtemControl

include(LibFindMacros)

# Include dir
find_path(QAtemControl_INCLUDE_DIR
  NAMES qatemconnection.h
  PATHS $ENV{QATEMCONTROL_INSTALL_DIR}/include
)

# Finally the library itself
find_library(QAtemControl_LIBRARY
  NAMES qatemcontrol
  PATHS $ENV{QATEMCONTROL_INSTALL_DIR}/lib
)

# Set the include dir variables and the libraries and let libfind_process do the rest.
# NOTE: Singular variables for this library, plural for libraries this this lib depends on.
set(QAtemControl_PROCESS_INCLUDES QAtemControl_INCLUDE_DIR)
set(QAtemControl_PROCESS_LIBS QAtemControl_LIBRARY)
libfind_process(QAtemControl)