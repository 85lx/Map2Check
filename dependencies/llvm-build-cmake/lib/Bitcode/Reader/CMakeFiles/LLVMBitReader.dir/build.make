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

# Include any dependencies generated for this target.
include lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/depend.make

# Include the progress variables for this target.
include lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/progress.make

# Include the compile flags for this target's objects.
include lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/flags.make

lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitReader.cpp.o: lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/flags.make
lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitReader.cpp.o: /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-3.8.1/lib/Bitcode/Reader/BitReader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitReader.cpp.o"
	cd /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-build-cmake/lib/Bitcode/Reader && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LLVMBitReader.dir/BitReader.cpp.o -c /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-3.8.1/lib/Bitcode/Reader/BitReader.cpp

lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitReader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LLVMBitReader.dir/BitReader.cpp.i"
	cd /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-build-cmake/lib/Bitcode/Reader && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-3.8.1/lib/Bitcode/Reader/BitReader.cpp > CMakeFiles/LLVMBitReader.dir/BitReader.cpp.i

lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitReader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LLVMBitReader.dir/BitReader.cpp.s"
	cd /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-build-cmake/lib/Bitcode/Reader && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-3.8.1/lib/Bitcode/Reader/BitReader.cpp -o CMakeFiles/LLVMBitReader.dir/BitReader.cpp.s

lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitReader.cpp.o.requires:

.PHONY : lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitReader.cpp.o.requires

lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitReader.cpp.o.provides: lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitReader.cpp.o.requires
	$(MAKE) -f lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/build.make lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitReader.cpp.o.provides.build
.PHONY : lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitReader.cpp.o.provides

lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitReader.cpp.o.provides.build: lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitReader.cpp.o


lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitcodeReader.cpp.o: lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/flags.make
lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitcodeReader.cpp.o: /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-3.8.1/lib/Bitcode/Reader/BitcodeReader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitcodeReader.cpp.o"
	cd /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-build-cmake/lib/Bitcode/Reader && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LLVMBitReader.dir/BitcodeReader.cpp.o -c /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-3.8.1/lib/Bitcode/Reader/BitcodeReader.cpp

lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitcodeReader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LLVMBitReader.dir/BitcodeReader.cpp.i"
	cd /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-build-cmake/lib/Bitcode/Reader && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-3.8.1/lib/Bitcode/Reader/BitcodeReader.cpp > CMakeFiles/LLVMBitReader.dir/BitcodeReader.cpp.i

lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitcodeReader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LLVMBitReader.dir/BitcodeReader.cpp.s"
	cd /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-build-cmake/lib/Bitcode/Reader && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-3.8.1/lib/Bitcode/Reader/BitcodeReader.cpp -o CMakeFiles/LLVMBitReader.dir/BitcodeReader.cpp.s

lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitcodeReader.cpp.o.requires:

.PHONY : lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitcodeReader.cpp.o.requires

lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitcodeReader.cpp.o.provides: lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitcodeReader.cpp.o.requires
	$(MAKE) -f lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/build.make lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitcodeReader.cpp.o.provides.build
.PHONY : lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitcodeReader.cpp.o.provides

lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitcodeReader.cpp.o.provides.build: lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitcodeReader.cpp.o


lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitstreamReader.cpp.o: lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/flags.make
lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitstreamReader.cpp.o: /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-3.8.1/lib/Bitcode/Reader/BitstreamReader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitstreamReader.cpp.o"
	cd /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-build-cmake/lib/Bitcode/Reader && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LLVMBitReader.dir/BitstreamReader.cpp.o -c /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-3.8.1/lib/Bitcode/Reader/BitstreamReader.cpp

lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitstreamReader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LLVMBitReader.dir/BitstreamReader.cpp.i"
	cd /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-build-cmake/lib/Bitcode/Reader && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-3.8.1/lib/Bitcode/Reader/BitstreamReader.cpp > CMakeFiles/LLVMBitReader.dir/BitstreamReader.cpp.i

lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitstreamReader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LLVMBitReader.dir/BitstreamReader.cpp.s"
	cd /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-build-cmake/lib/Bitcode/Reader && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-3.8.1/lib/Bitcode/Reader/BitstreamReader.cpp -o CMakeFiles/LLVMBitReader.dir/BitstreamReader.cpp.s

lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitstreamReader.cpp.o.requires:

.PHONY : lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitstreamReader.cpp.o.requires

lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitstreamReader.cpp.o.provides: lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitstreamReader.cpp.o.requires
	$(MAKE) -f lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/build.make lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitstreamReader.cpp.o.provides.build
.PHONY : lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitstreamReader.cpp.o.provides

lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitstreamReader.cpp.o.provides.build: lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitstreamReader.cpp.o


# Object files for target LLVMBitReader
LLVMBitReader_OBJECTS = \
"CMakeFiles/LLVMBitReader.dir/BitReader.cpp.o" \
"CMakeFiles/LLVMBitReader.dir/BitcodeReader.cpp.o" \
"CMakeFiles/LLVMBitReader.dir/BitstreamReader.cpp.o"

# External object files for target LLVMBitReader
LLVMBitReader_EXTERNAL_OBJECTS =

lib/libLLVMBitReader.a: lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitReader.cpp.o
lib/libLLVMBitReader.a: lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitcodeReader.cpp.o
lib/libLLVMBitReader.a: lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitstreamReader.cpp.o
lib/libLLVMBitReader.a: lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/build.make
lib/libLLVMBitReader.a: lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-build-cmake/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library ../../libLLVMBitReader.a"
	cd /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-build-cmake/lib/Bitcode/Reader && $(CMAKE_COMMAND) -P CMakeFiles/LLVMBitReader.dir/cmake_clean_target.cmake
	cd /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-build-cmake/lib/Bitcode/Reader && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LLVMBitReader.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/build: lib/libLLVMBitReader.a

.PHONY : lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/build

lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/requires: lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitReader.cpp.o.requires
lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/requires: lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitcodeReader.cpp.o.requires
lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/requires: lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/BitstreamReader.cpp.o.requires

.PHONY : lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/requires

lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/clean:
	cd /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-build-cmake/lib/Bitcode/Reader && $(CMAKE_COMMAND) -P CMakeFiles/LLVMBitReader.dir/cmake_clean.cmake
.PHONY : lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/clean

lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/depend:
	cd /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-build-cmake && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-3.8.1 /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-3.8.1/lib/Bitcode/Reader /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-build-cmake /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-build-cmake/lib/Bitcode/Reader /home/map2check/devel_tool/map_src_on_docker/dependencies/llvm-build-cmake/lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/Bitcode/Reader/CMakeFiles/LLVMBitReader.dir/depend

