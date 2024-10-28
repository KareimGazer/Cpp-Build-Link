#!/usr/bin/env bash

BUILD_DIR="../build"

# Clean the build directory if it exists
if [ -d "$BUILD_DIR" ]; then
  echo "Cleaning existing build directory..."
  rm -rf $BUILD_DIR
fi

echo "Creating build directory..."
mkdir -p $BUILD_DIR

cd ../build
cmake ..
make

# run in case of not using cmake
# mkdir -p build
# clang++ -c -Iinclude src/sum.cpp -o build/sum.o
# clang++ -c -Iinclude src/subtract.cpp -o build/subtract.o

# # making a library by archiving the two objects
# ar rcs build/libipb_arithmetic.a build/sum.o build/subtract.o

# clang++ -c -Iinclude src/main.cpp -o build/main.o

# clang++ build/main.o -Lbuild -lipb_arithmetic -o build/main