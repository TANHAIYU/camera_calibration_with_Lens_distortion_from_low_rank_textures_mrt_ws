# Generated from: mrt_cmake_modules/cmake/mrt_cmake_modules-extra.cmake.em
if(_MRT_CMAKE_MODULES_EXTRAS_INCLUDED_)
    return()
endif()
set(_MRT_CMAKE_MODULES_EXTRAS_INCLUDED_ TRUE)

# Check cmakelists version
set(_MRT_RECOMMENDED_VERSION 4.0)
if(MRT_PKG_VERSION AND MRT_PKG_VERSION VERSION_LESS _MRT_RECOMMENDED_VERSION )
   message(WARNING "Current CMakeLists.txt version is less than the recommended version ${_MRT_RECOMMENDED_VERSION}. If you are the maintainer, please update it with\n'mrt maintenance update_cmakelists ${PROJECT_NAME}'.")
endif()

# Set the cmake install path
# cmake dir in develspace
set(MRT_CMAKE_MODULES_ROOT_PATH "/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/mrt_cmake_modules")
set(MRT_CMAKE_MODULES_CMAKE_PATH "/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/mrt_cmake_modules/cmake")

list(APPEND CMAKE_MODULE_PATH "${MRT_CMAKE_MODULES_CMAKE_PATH}/Modules")
set(MCM_TEMPLATE_DIR "${MRT_CMAKE_MODULES_CMAKE_PATH}/Templates")
include(${MRT_CMAKE_MODULES_CMAKE_PATH}/mrt_cmake_modules-macros.cmake)
