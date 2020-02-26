# Install script for directory: /home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/mrt_cmake_modules

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/cmake-build-debug/mrt_cmake_modules/catkin_generated/installspace/mrt_cmake_modules.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrt_cmake_modules/cmake" TYPE FILE FILES "/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/cmake-build-debug/mrt_cmake_modules/catkin_generated/installspace/mrt_cmake_modules-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrt_cmake_modules/cmake" TYPE FILE FILES
    "/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/cmake-build-debug/mrt_cmake_modules/catkin_generated/installspace/mrt_cmake_modulesConfig.cmake"
    "/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/cmake-build-debug/mrt_cmake_modules/catkin_generated/installspace/mrt_cmake_modulesConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrt_cmake_modules" TYPE FILE FILES "/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/mrt_cmake_modules/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrt_cmake_modules" TYPE DIRECTORY FILES "/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/mrt_cmake_modules/cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrt_cmake_modules/scripts" TYPE PROGRAM FILES
    "/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/mrt_cmake_modules/scripts/generate_cmake_dependency_file.py"
    "/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/mrt_cmake_modules/scripts/init_coverage.py"
    "/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/mrt_cmake_modules/scripts/eval_coverage.py"
    "/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/mrt_cmake_modules/scripts/run_test.py"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mrt_cmake_modules" TYPE PROGRAM FILES "/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/mrt_cmake_modules/scripts/generate_cmakelists.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrt_cmake_modules/yaml" TYPE FILE FILES "/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/mrt_cmake_modules/yaml/cmake.yaml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mrt_cmake_modules" TYPE FILE FILES "/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/mrt_cmake_modules/ci_templates/CMakeLists.txt")
endif()

