# CMake generated Testfile for 
# Source directory: /home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/selfcalib_tool
# Build directory: /home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/cmake-build-debug/selfcalib_tool
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(build_tests "/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/cmake-build-debug/catkin_generated/env_cached.sh" "bash" "-c" "\"/usr/local/clion-2019.3.4/bin/cmake/linux/bin/cmake\" --build /home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/cmake-build-debug --parallel 16 --target tests && /home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/mrt_cmake_modules/scripts/init_coverage.py selfcalib_tool /home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/cmake-build-debug /home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/selfcalib_tool /home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/cmake-build-debug/test_results/selfcalib_tool")
set_tests_properties(build_tests PROPERTIES  _BACKTRACE_TRIPLES "/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/mrt_cmake_modules/cmake/Modules/MrtTesting.cmake;72;add_test;/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/mrt_cmake_modules/cmake/mrt_cmake_modules-macros.cmake;1143;mrt_init_testing;/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/selfcalib_tool/CMakeLists.txt;58;mrt_add_tests;/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/selfcalib_tool/CMakeLists.txt;0;")
add_test(nosetests-selfcalib_tool-test "/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/cmake-build-debug/catkin_generated/env_cached.sh" "/usr/bin/python2" "/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/mrt_cmake_modules/scripts/run_test.py" "/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/cmake-build-debug/test_results/selfcalib_tool/nosetests-selfcalib_tool-test.xml" "--working-dir" "/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/selfcalib_tool" "--redirect-stderr" "--return-code" "/usr/bin/nosetests-2.7 -P --process-timeout=60 --where=/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/selfcalib_tool/test --with-xunit --xunit-file=\"/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/cmake-build-debug/test_results/selfcalib_tool/nosetests-selfcalib_tool-test.xml\" ")
set_tests_properties(nosetests-selfcalib_tool-test PROPERTIES  DEPENDS "build_tests" _BACKTRACE_TRIPLES "/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/mrt_cmake_modules/cmake/Modules/MrtTesting.cmake;104;add_test;/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/mrt_cmake_modules/cmake/Modules/MrtTesting.cmake;243;_mrt_run_test;/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/mrt_cmake_modules/cmake/mrt_cmake_modules-macros.cmake;1195;_mrt_add_nosetests_impl;/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/selfcalib_tool/CMakeLists.txt;59;mrt_add_nosetests;/home/htan/master_thesis/camera_calibration_with_Lens_distortion_from_low_rank_textures_ws/src/selfcalib_tool/CMakeLists.txt;0;")
