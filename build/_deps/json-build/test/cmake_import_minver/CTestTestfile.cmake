# CMake generated Testfile for 
# Source directory: /Users/scott/Documents/workspace/cnd/build/_deps/json-src/test/cmake_import_minver
# Build directory: /Users/scott/Documents/workspace/cnd/build/_deps/json-build/test/cmake_import_minver
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(cmake_import_minver_configure "/usr/local/Cellar/cmake/3.17.3/bin/cmake" "-G" "Unix Makefiles" "-A" "" "-Dnlohmann_json_DIR=/Users/scott/Documents/workspace/cnd/build/_deps/json-build" "/Users/scott/Documents/workspace/cnd/build/_deps/json-src/test/cmake_import_minver/project")
set_tests_properties(cmake_import_minver_configure PROPERTIES  FIXTURES_SETUP "cmake_import_minver" _BACKTRACE_TRIPLES "/Users/scott/Documents/workspace/cnd/build/_deps/json-src/test/cmake_import_minver/CMakeLists.txt;1;add_test;/Users/scott/Documents/workspace/cnd/build/_deps/json-src/test/cmake_import_minver/CMakeLists.txt;0;")
add_test(cmake_import_minver_build "/usr/local/Cellar/cmake/3.17.3/bin/cmake" "--build" ".")
set_tests_properties(cmake_import_minver_build PROPERTIES  FIXTURES_REQUIRED "cmake_import_minver" _BACKTRACE_TRIPLES "/Users/scott/Documents/workspace/cnd/build/_deps/json-src/test/cmake_import_minver/CMakeLists.txt;8;add_test;/Users/scott/Documents/workspace/cnd/build/_deps/json-src/test/cmake_import_minver/CMakeLists.txt;0;")
