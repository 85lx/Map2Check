# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-3.8.1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-build-cmake

# Utility rule file for install-LLVMCore.

# Include the progress variables for this target.
include lib/IR/CMakeFiles/install-LLVMCore.dir/progress.make

lib/IR/CMakeFiles/install-LLVMCore: lib/libLLVMCore.a
	cd /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-build-cmake/lib/IR && /usr/bin/cmake -DCMAKE_INSTALL_COMPONENT=LLVMCore -P /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-build-cmake/cmake_install.cmake

install-LLVMCore: lib/IR/CMakeFiles/install-LLVMCore
install-LLVMCore: lib/IR/CMakeFiles/install-LLVMCore.dir/build.make

.PHONY : install-LLVMCore

# Rule to build all files generated by this target.
lib/IR/CMakeFiles/install-LLVMCore.dir/build: install-LLVMCore

.PHONY : lib/IR/CMakeFiles/install-LLVMCore.dir/build

lib/IR/CMakeFiles/install-LLVMCore.dir/clean:
	cd /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-build-cmake/lib/IR && $(CMAKE_COMMAND) -P CMakeFiles/install-LLVMCore.dir/cmake_clean.cmake
.PHONY : lib/IR/CMakeFiles/install-LLVMCore.dir/clean

lib/IR/CMakeFiles/install-LLVMCore.dir/depend:
	cd /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-build-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-3.8.1 /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-3.8.1/lib/IR /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-build-cmake /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-build-cmake/lib/IR /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-build-cmake/lib/IR/CMakeFiles/install-LLVMCore.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/IR/CMakeFiles/install-LLVMCore.dir/depend

