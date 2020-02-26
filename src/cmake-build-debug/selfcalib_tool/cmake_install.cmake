# Install script for directory: /home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/selfcalib_tool

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/selfcalib_tool/selfcalib_tool" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/selfcalib_tool/selfcalib_tool")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/selfcalib_tool/selfcalib_tool"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/selfcalib_tool" TYPE EXECUTABLE FILES "/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/cmake-build-debug/devel/lib/selfcalib_tool/selfcalib_tool")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/selfcalib_tool/selfcalib_tool" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/selfcalib_tool/selfcalib_tool")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/selfcalib_tool/selfcalib_tool"
         OLD_RPATH "/usr/local/cuda/lib64:/opt/mrtsoftware/release/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/selfcalib_tool/selfcalib_tool")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/selfcalib_tool/cmake" TYPE FILE FILES "/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/cmake-build-debug/devel/share/selfcalib_tool/cmake/selfcalib_toolConfigVersion.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/selfcalib_tool/cmake" TYPE FILE FILES
    "/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/cmake-build-debug/devel/share/selfcalib_tool/cmake/selfcalib_toolConfig.cmake"
    "/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/cmake-build-debug/selfcalib_tool/CMakeFiles/auto_dep_vars.cmake"
    "/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/cmake-build-debug/devel/share/selfcalib_tool/cmake/selfcalib_toolAutoDepsConfig.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/selfcalib_tool" TYPE FILE FILES "/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/selfcalib_tool/package.xml")
endif()

