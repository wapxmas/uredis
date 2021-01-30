add_executable(iouredis uredis.cpp)

set_target_properties(iouredis
        PROPERTIES
        ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/uredis"
        LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/uredis"
        RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/uredis"
        )