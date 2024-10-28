# Cpp Build+Link

This repository is for those who just started working on C++ software development and don't have much knowledge about build systems.

Build systems are just **tools**, and one shouldn't get lost learning how to deal with it, it is what it is, a tool. And one just need to learn how to use it.

## Target

This repo represnts a tutorial for:

1. How to structure your cpp project
2. How to use build systems generators like **CMake** to build and link your source files and dependencies.
3. How to use **Bash scripts** to automate the workflow

Note: move to the scripts folder before running the scripts

## Folder Structure

```sh
C++ Project Structure
├── CMakeLists.txt          # Main CMake file for configuring the build process
├── LICENSE                 # License file for the project
├── README.md               # Project description and usage instructions
├── .gitignore              # Files to be ignored by Git
├── build/                  # Directory for build files (typically excluded from version control)
│   └── ...                 # All compiled object files and executables go here
├── docs/                   # Documentation files for the project
│   └── manual.md           # Project-specific documentation
├── include/                # Public headers for the project
│   └── libname/            # Directory matching the library name
│   └── libname.hpp     # Header file containing library API
├── src/                    # Source files for the project
│   ├── main.cpp            # Main entry point for the application
│   └── example.cpp         # Source file implementing functionality from example.hpp
├── tests/                  # Unit and integration tests
│   ├── CMakeLists.txt      # CMake file for compiling tests
│   └── test_example.cpp    # Test file for example functionality
├── third_party/            # External dependencies
│   └── lib/                # Libraries used by the project
└── scripts/                # Scripts related to building or managing the project
    ├── build.sh            # build script for building the binary artifacts in the build folder
    ├── install.sh          # installation script installing the project in the install folder (instead of the default location /usr/local)   
    └── setup.sh            # Setup script for environment configuration

```
