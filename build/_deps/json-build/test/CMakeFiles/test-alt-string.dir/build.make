# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.17.3/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.17.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/scott/Documents/workspace/cnd

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/scott/Documents/workspace/cnd/build

# Include any dependencies generated for this target.
include _deps/json-build/test/CMakeFiles/test-alt-string.dir/depend.make

# Include the progress variables for this target.
include _deps/json-build/test/CMakeFiles/test-alt-string.dir/progress.make

# Include the compile flags for this target's objects.
include _deps/json-build/test/CMakeFiles/test-alt-string.dir/flags.make

_deps/json-build/test/CMakeFiles/test-alt-string.dir/src/unit-alt-string.cpp.o: _deps/json-build/test/CMakeFiles/test-alt-string.dir/flags.make
_deps/json-build/test/CMakeFiles/test-alt-string.dir/src/unit-alt-string.cpp.o: _deps/json-src/test/src/unit-alt-string.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/scott/Documents/workspace/cnd/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object _deps/json-build/test/CMakeFiles/test-alt-string.dir/src/unit-alt-string.cpp.o"
	cd /Users/scott/Documents/workspace/cnd/build/_deps/json-build/test && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test-alt-string.dir/src/unit-alt-string.cpp.o -c /Users/scott/Documents/workspace/cnd/build/_deps/json-src/test/src/unit-alt-string.cpp

_deps/json-build/test/CMakeFiles/test-alt-string.dir/src/unit-alt-string.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-alt-string.dir/src/unit-alt-string.cpp.i"
	cd /Users/scott/Documents/workspace/cnd/build/_deps/json-build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/scott/Documents/workspace/cnd/build/_deps/json-src/test/src/unit-alt-string.cpp > CMakeFiles/test-alt-string.dir/src/unit-alt-string.cpp.i

_deps/json-build/test/CMakeFiles/test-alt-string.dir/src/unit-alt-string.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-alt-string.dir/src/unit-alt-string.cpp.s"
	cd /Users/scott/Documents/workspace/cnd/build/_deps/json-build/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/scott/Documents/workspace/cnd/build/_deps/json-src/test/src/unit-alt-string.cpp -o CMakeFiles/test-alt-string.dir/src/unit-alt-string.cpp.s

# Object files for target test-alt-string
test__alt__string_OBJECTS = \
"CMakeFiles/test-alt-string.dir/src/unit-alt-string.cpp.o"

# External object files for target test-alt-string
test__alt__string_EXTERNAL_OBJECTS = \
"/Users/scott/Documents/workspace/cnd/build/_deps/json-build/test/CMakeFiles/doctest_main.dir/src/unit.cpp.o"

_deps/json-build/test/test-alt-string: _deps/json-build/test/CMakeFiles/test-alt-string.dir/src/unit-alt-string.cpp.o
_deps/json-build/test/test-alt-string: _deps/json-build/test/CMakeFiles/doctest_main.dir/src/unit.cpp.o
_deps/json-build/test/test-alt-string: _deps/json-build/test/CMakeFiles/test-alt-string.dir/build.make
_deps/json-build/test/test-alt-string: _deps/json-build/test/CMakeFiles/test-alt-string.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/scott/Documents/workspace/cnd/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test-alt-string"
	cd /Users/scott/Documents/workspace/cnd/build/_deps/json-build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-alt-string.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
_deps/json-build/test/CMakeFiles/test-alt-string.dir/build: _deps/json-build/test/test-alt-string

.PHONY : _deps/json-build/test/CMakeFiles/test-alt-string.dir/build

_deps/json-build/test/CMakeFiles/test-alt-string.dir/clean:
	cd /Users/scott/Documents/workspace/cnd/build/_deps/json-build/test && $(CMAKE_COMMAND) -P CMakeFiles/test-alt-string.dir/cmake_clean.cmake
.PHONY : _deps/json-build/test/CMakeFiles/test-alt-string.dir/clean

_deps/json-build/test/CMakeFiles/test-alt-string.dir/depend:
	cd /Users/scott/Documents/workspace/cnd/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/scott/Documents/workspace/cnd /Users/scott/Documents/workspace/cnd/build/_deps/json-src/test /Users/scott/Documents/workspace/cnd/build /Users/scott/Documents/workspace/cnd/build/_deps/json-build/test /Users/scott/Documents/workspace/cnd/build/_deps/json-build/test/CMakeFiles/test-alt-string.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : _deps/json-build/test/CMakeFiles/test-alt-string.dir/depend
