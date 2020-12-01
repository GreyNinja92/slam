# This file will be configured to contain variables for CPack. These variables
# should be set in the CMake list file of the project before CPack module is
# included. The list of available CPACK_xxx variables and their associated
# documentation may be obtained using
#  cpack --help-variable-list
#
# Some variables are common to all generators (e.g. CPACK_PACKAGE_NAME)
# and some are specific to a generator
# (e.g. CPACK_NSIS_EXTRA_INSTALL_COMMANDS). The generator specific variables
# usually begin with CPACK_<GENNAME>_xxxx.


set(CPACK_BUILD_SOURCE_DIRS "/Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin;/Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/build")
set(CPACK_CMAKE_GENERATOR "Unix Makefiles")
set(CPACK_COMPONENTS_ALL "")
set(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
set(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "Steven Lovegrove")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_FILE "/usr/local/Cellar/cmake/3.18.1/share/cmake/Templates/CPack.GenericDescription.txt")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_SUMMARY "Pangolin built using CMake")
set(CPACK_GENERATOR "TBZ2;TGZ;TXZ;TZ")
set(CPACK_IGNORE_FILES "/CVS/;/\\.svn/;/\\.bzr/;/\\.hg/;/\\.git/;\\.swp\$;\\.#;/#")
set(CPACK_INSTALLED_DIRECTORIES "/Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin;/")
set(CPACK_INSTALL_CMAKE_PROJECTS "")
set(CPACK_INSTALL_PREFIX "/usr/local")
set(CPACK_MODULE_PATH "/Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/CMakeModules/")
set(CPACK_NSIS_DISPLAY_NAME "Pangolin 0.5.0")
set(CPACK_NSIS_INSTALLER_ICON_CODE "")
set(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
set(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES")
set(CPACK_NSIS_PACKAGE_NAME "Pangolin 0.5.0")
set(CPACK_NSIS_UNINSTALL_NAME "Uninstall")
set(CPACK_OSX_SYSROOT "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.15.sdk")
set(CPACK_OUTPUT_CONFIG_FILE "/Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/build/CPackConfig.cmake")
set(CPACK_PACKAGE_DEFAULT_LOCATION "/")
set(CPACK_PACKAGE_DESCRIPTION_FILE "/usr/local/Cellar/cmake/3.18.1/share/cmake/Templates/CPack.GenericDescription.txt")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "Pangolin built using CMake")
set(CPACK_PACKAGE_FILE_NAME "Pangolin-0.5.0-Source")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "Pangolin 0.5.0")
set(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "Pangolin 0.5.0")
set(CPACK_PACKAGE_NAME "Pangolin")
set(CPACK_PACKAGE_RELOCATABLE "true")
set(CPACK_PACKAGE_VENDOR "Humanity")
set(CPACK_PACKAGE_VERSION "0.5.0")
set(CPACK_PACKAGE_VERSION_MAJOR "0")
set(CPACK_PACKAGE_VERSION_MINOR "5")
set(CPACK_PACKAGE_VERSION_PATCH "0")
set(CPACK_RESOURCE_FILE_LICENSE "/usr/local/Cellar/cmake/3.18.1/share/cmake/Templates/CPack.GenericLicense.txt")
set(CPACK_RESOURCE_FILE_README "/usr/local/Cellar/cmake/3.18.1/share/cmake/Templates/CPack.GenericDescription.txt")
set(CPACK_RESOURCE_FILE_WELCOME "/usr/local/Cellar/cmake/3.18.1/share/cmake/Templates/CPack.GenericWelcome.txt")
set(CPACK_RPM_PACKAGE_SOURCES "ON")
set(CPACK_SET_DESTDIR "OFF")
set(CPACK_SOURCE_GENERATOR "TBZ2;TGZ;TXZ;TZ")
set(CPACK_SOURCE_IGNORE_FILES "/CVS/;/\\.svn/;/\\.bzr/;/\\.hg/;/\\.git/;\\.swp\$;\\.#;/#")
set(CPACK_SOURCE_INSTALLED_DIRECTORIES "/Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin;/")
set(CPACK_SOURCE_OUTPUT_CONFIG_FILE "/Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/build/CPackSourceConfig.cmake")
set(CPACK_SOURCE_PACKAGE_FILE_NAME "Pangolin-0.5.0-Source")
set(CPACK_SOURCE_RPM "OFF")
set(CPACK_SOURCE_TBZ2 "ON")
set(CPACK_SOURCE_TGZ "ON")
set(CPACK_SOURCE_TOPLEVEL_TAG "Darwin-Source")
set(CPACK_SOURCE_TXZ "ON")
set(CPACK_SOURCE_TZ "ON")
set(CPACK_SOURCE_ZIP "OFF")
set(CPACK_STRIP_FILES "")
set(CPACK_SYSTEM_NAME "Darwin")
set(CPACK_TOPLEVEL_TAG "Darwin-Source")
set(CPACK_WIX_SIZEOF_VOID_P "8")

if(NOT CPACK_PROPERTIES_FILE)
  set(CPACK_PROPERTIES_FILE "/Users/sakshamramkhatod/Desktop/Stuff/slam/Pangolin/build/CPackProperties.cmake")
endif()

if(EXISTS ${CPACK_PROPERTIES_FILE})
  include(${CPACK_PROPERTIES_FILE})
endif()
