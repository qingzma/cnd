cmake_minimum_required(VERSION 3.17)
project(michael_json)

set(CMAKE_CXX_STANDARD 14)


include(FetchContent)

FetchContent_Declare(json
        GIT_REPOSITORY https://github.com/nlohmann/json.git
        GIT_TAG v3.7.3)

FetchContent_GetProperties(json)
if(NOT json_POPULATED)
    FetchContent_Populate(json)
    add_subdirectory(${json_SOURCE_DIR} ${json_BINARY_DIR} EXCLUDE_FROM_ALL)
endif()

add_executable(cnd main.cpp)
#target_link_libraries(michael_json PRIVATE nlohmann_json::nlohmann_json)