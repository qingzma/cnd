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

# Utility rule file for ContinuousSubmit.

# Include the progress variables for this target.
include _deps/json-build/CMakeFiles/ContinuousSubmit.dir/progress.make

_deps/json-build/CMakeFiles/ContinuousSubmit:
	cd /Users/scott/Documents/workspace/cnd/build/_deps/json-build && /usr/local/Cellar/cmake/3.17.3/bin/ctest -D ContinuousSubmit

ContinuousSubmit: _deps/json-build/CMakeFiles/ContinuousSubmit
ContinuousSubmit: _deps/json-build/CMakeFiles/ContinuousSubmit.dir/build.make

.PHONY : ContinuousSubmit

# Rule to build all files generated by this target.
_deps/json-build/CMakeFiles/ContinuousSubmit.dir/build: ContinuousSubmit

.PHONY : _deps/json-build/CMakeFiles/ContinuousSubmit.dir/build

_deps/json-build/CMakeFiles/ContinuousSubmit.dir/clean:
	cd /Users/scott/Documents/workspace/cnd/build/_deps/json-build && $(CMAKE_COMMAND) -P CMakeFiles/ContinuousSubmit.dir/cmake_clean.cmake
.PHONY : _deps/json-build/CMakeFiles/ContinuousSubmit.dir/clean

_deps/json-build/CMakeFiles/ContinuousSubmit.dir/depend:
	cd /Users/scott/Documents/workspace/cnd/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/scott/Documents/workspace/cnd /Users/scott/Documents/workspace/cnd/build/_deps/json-src /Users/scott/Documents/workspace/cnd/build /Users/scott/Documents/workspace/cnd/build/_deps/json-build /Users/scott/Documents/workspace/cnd/build/_deps/json-build/CMakeFiles/ContinuousSubmit.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : _deps/json-build/CMakeFiles/ContinuousSubmit.dir/depend

