#pragma once
#ifndef TEST_PATH_USE_STD_FILESYSTEM

#if __cplusplus >= 201703L && defined(__has_include)
#if __has_include(<filesystem>)
#define TEST_PATH_USE_STD_FILESYSTEM 1
#endif
#endif
#ifndef TEST_PATH_USE_STD_FILESYSTEM
#define TEST_PATH_USE_STD_FILESYSTEM 0
#endif

#if TEST_PATH_USE_STD_FILESYSTEM
#include <filesystem>
#else
#include <boost/filesystem.hpp>
#endif

namespace selfcalib_tool {
namespace test{

#ifdef TEST_PATH_USE_STD_FILESYSTEM
static const std::filesystem::path projectRootDir{"/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/selfcalib_tool"};
#else
static const boost::filesystem::path projectRootDir{"/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/selfcalib_tool"};
#endif

} // namespace test
} // namespace selfcalib_tool

#endif
