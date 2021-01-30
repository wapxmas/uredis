cmake_minimum_required(VERSION 3.15)

project(IOUringRedis VERSION 1.0
        DESCRIPTION "RedisDB client (featuring io_uring framework)"
        LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -Wno-unknown-pragmas -Wno-switch -Wno-unused-function -Wno-unused-parameter")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-sign-compare")

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR}/cmake)

configure_file(uredis.h.in uredis.h)

include_directories(include ${PROJECT_BINARY_DIR} lib/Catch2/single_include)

link_libraries(anl uring pthread)

add_subdirectory(lib/Catch2)
add_subdirectory(tests)
add_subdirectory(uredis)
