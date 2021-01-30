add_executable(unit-tests test.cpp)
target_link_libraries(unit-tests PRIVATE Catch2::Catch2)

include(CTest)
include(Catch)
catch_discover_tests(unit-tests)
