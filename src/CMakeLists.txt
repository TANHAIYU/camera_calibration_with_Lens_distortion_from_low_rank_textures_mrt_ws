# toplevel CMakeLists.txt for a catkin workspace
# catkin/cmake/toplevel.cmake

cmake_minimum_required(VERSION 2.8.3)

# CMake requires to have a literal call to project in the top level CMakeLists.txt.
project(Project)

# Enable CUDA language as this has to be done in the toplevel cmake lists.
# Otherwise cmake will crash in strange behaviours during generation.
if(NOT ${CMAKE_VERSION} VERSION_LESS "3.9.0")
    if(DEFINED ENV{CUDA_NVCC_EXECUTABLE})
        set(_CUDA_NVCC_EXECUTABLE "$ENV{CUDA_NVCC_EXECUTABLE}" CACHE FILEPATH "The CUDA compiler")
    else()
        find_program(_CUDA_NVCC_EXECUTABLE
            NAMES nvcc
            PATHS "/usr/local/cuda"
            ENV CUDA_PATH
            ENV CUDA_BIN_PATH
            PATH_SUFFIXES bin bin64
            NO_DEFAULT_PATH
            )
        # Search default search paths, after we search our own set of paths.
        find_program(_CUDA_NVCC_EXECUTABLE nvcc)
    endif()

    if (_CUDA_NVCC_EXECUTABLE)
        message(STATUS "Found nvcc at '${_CUDA_NVCC_EXECUTABLE}'")
        set(CMAKE_CUDA_COMPILER "${_CUDA_NVCC_EXECUTABLE}")
        set(CMAKE_CUDA_HOST_COMPILER "g++-8")
        enable_language(CUDA)
    else()
        message(STATUS "No CUDA compiler found.")
    endif()
endif()

set(CATKIN_TOPLEVEL TRUE)

# search for catkin within the workspace
set(_cmd "catkin_find_pkg" "catkin" "${CMAKE_SOURCE_DIR}")
execute_process(COMMAND ${_cmd}
  RESULT_VARIABLE _res
  OUTPUT_VARIABLE _out
  ERROR_VARIABLE _err
  OUTPUT_STRIP_TRAILING_WHITESPACE
  ERROR_STRIP_TRAILING_WHITESPACE
)
if(NOT _res EQUAL 0 AND NOT _res EQUAL 2)
  # searching fot catkin resulted in an error
  string(REPLACE ";" " " _cmd_str "${_cmd}")
  message(FATAL_ERROR "Search for 'catkin' in workspace failed (${_cmd_str}): ${_err}")
endif()

# include catkin from workspace or via find_package()
if(_res EQUAL 0)
  set(catkin_EXTRAS_DIR "${CMAKE_SOURCE_DIR}/${_out}/cmake")
  # include all.cmake without add_subdirectory to let it operate in same scope
  include(${catkin_EXTRAS_DIR}/all.cmake NO_POLICY_SCOPE)
  add_subdirectory("${_out}")

else()
  # use either CMAKE_PREFIX_PATH explicitly passed to CMake as a command line argument
  # or CMAKE_PREFIX_PATH from the environment
  if(NOT DEFINED CMAKE_PREFIX_PATH)
    if(NOT "$ENV{CMAKE_PREFIX_PATH}" STREQUAL "")
      string(REPLACE ":" ";" CMAKE_PREFIX_PATH $ENV{CMAKE_PREFIX_PATH})
    endif()
  endif()

  # list of catkin workspaces
  set(catkin_search_path "")
  foreach(path ${CMAKE_PREFIX_PATH})
    if(EXISTS "${path}/.catkin")
      list(FIND catkin_search_path ${path} _index)
      if(_index EQUAL -1)
        list(APPEND catkin_search_path ${path})
      endif()
    endif()
  endforeach()

  # search for catkin in all workspaces
  set(CATKIN_TOPLEVEL_FIND_PACKAGE TRUE)
  find_package(catkin QUIET
    NO_POLICY_SCOPE
    PATHS ${catkin_search_path}
    NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
  unset(CATKIN_TOPLEVEL_FIND_PACKAGE)

  if(NOT catkin_FOUND)
    message(FATAL_ERROR "find_package(catkin) failed. catkin was neither found in the workspace nor in the CMAKE_PREFIX_PATH. One reason may be that no ROS setup.sh was sourced before.")
  endif()
endif()

catkin_workspace()
