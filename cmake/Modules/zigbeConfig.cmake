INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_ZIGBE zigbe)

FIND_PATH(
    ZIGBE_INCLUDE_DIRS
    NAMES zigbe/api.h
    HINTS $ENV{ZIGBE_DIR}/include
        ${PC_ZIGBE_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    ZIGBE_LIBRARIES
    NAMES gnuradio-zigbe
    HINTS $ENV{ZIGBE_DIR}/lib
        ${PC_ZIGBE_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
          )

include("${CMAKE_CURRENT_LIST_DIR}/zigbeTarget.cmake")

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(ZIGBE DEFAULT_MSG ZIGBE_LIBRARIES ZIGBE_INCLUDE_DIRS)
MARK_AS_ADVANCED(ZIGBE_LIBRARIES ZIGBE_INCLUDE_DIRS)
