# Set the minimum CMake version and the project name
cmake_minimum_required(VERSION 3.10)
project(ipb_arithmetic)

# Specify the C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Specify the include directory for header files
include_directories(include)

# Create object files for sum.cpp and subtract.cpp
add_library(ipb_arithmetic STATIC src/sum.cpp src/subtract.cpp)

# Create the main executable
add_executable(main_exe src/main.cpp)

# Link the static library to the main executable
target_link_libraries(main_exe PRIVATE ipb_arithmetic)

# Installation section
install(TARGETS ipb_arithmetic DESTINATION lib)   # Install the library to the lib directory in install/

install(TARGETS main_exe DESTINATION bin)    # Install the executable to the bin directory in install/

install(DIRECTORY include/
        DESTINATION include/  # Install headers to the include directory in install/
        FILES_MATCHING PATTERN "*.hpp")
