# CMake generated Testfile for 
# Source directory: /Users/scott/Documents/workspace/cnd/build/_deps/json-src/test/cmake_add_subdirectory
# Build directory: /Users/scott/Documents/workspace/cnd/build/_deps/json-build/test/cmake_add_subdirectory
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(cmake_add_subdirectory_configure "/usr/local/Cellar/cmake/3.17.3/bin/cmake" "-G" "Unix Makefiles" "-Dnlohmann_json_source=/Users/scott/Documents/workspace/cnd/build/_deps/json-src" "/Users/scott/Documents/workspace/cnd/build/_deps/json-src/test/cmake_add_subdirectory/project")
set_tests_properties(cmake_add_subdirectory_configure PROPERTIES  FIXTURES_SETUP "cmake_add_subdirectory" _BACKTRACE_TRIPLES "/Users/scott/Documents/workspace/cnd/build/_deps/json-src/test/cmake_add_subdirectory/CMakeLists.txt;1;add_test;/Users/scott/Documents/workspace/cnd/build/_deps/json-src/test/cmake_add_subdirectory/CMakeLists.txt;0;")
add_test(cmake_add_subdirectory_build "/usr/local/Cellar/cmake/3.17.3/bin/cmake" "--build" ".")
set_tests_properties(cmake_add_subdirectory_build PROPERTIES  FIXTURES_REQUIRED "cmake_add_subdirectory" _BACKTRACE_TRIPLES "/Users/scott/Documents/workspace/cnd/build/_deps/json-src/test/cmake_add_subdirectory/CMakeLists.txt;7;add_test;/Users/scott/Documents/workspace/cnd/build/_deps/json-src/test/cmake_add_subdirectory/CMakeLists.txt;0;")
