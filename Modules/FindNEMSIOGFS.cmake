# This module looks for environment variables detailing where NEMSIOGFS lib is
# If variables are not set, NEMSIOGFS will be built from external source
if(DEFINED ENV{NEMSIOGFS_LIB} )
  set(NEMSIOGFS_LIB $ENV{NEMSIOGFS_LIB} CACHE STRING "NEMSIOGFS Library Location" )
  set(NEMSIOGFS_INC $ENV{NEMSIOGFS_INC} CACHE STRING "NEMSIOGFS Include Location" )
else()
  set(NEMSIOGFS_VER 2.2.1)
  find_library( NEMSIOGFS_LIB
    NAMES libnemsio_v${NEMSIOGFS_VER}.a
    HINTS
      ${NECPLIBS_INSTALL_DIR}/lib
    )
  set(NEMSIOGFS_INC ${NECPLIBS_INSTALL_DIR}/include CACHE STRING "NEMSIOGFS Include Location" )
endif()
