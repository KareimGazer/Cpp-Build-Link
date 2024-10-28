#!/usr/bin/env bash

# Define the installation directory
INSTALL_DIR="../install"

# Check if build directory exists
if [ ! -d "../build" ]; then
  echo "Build directory not found. Please run './build.sh' first."
  exit 1
fi

# Clean the install directory if it exists
if [ -d "$INSTALL_DIR" ]; then
  echo "Cleaning existing install directory..."
  rm -rf $INSTALL_DIR
fi

# Create the install directory structure
echo "Creating install directory..."
mkdir -p $INSTALL_DIR

cd ../build
cmake .. -DCMAKE_INSTALL_PREFIX=../install # avoid the default installation location (/usr/local)
make install

# Print completion message
echo "Installation completed successfully!"
echo "Library installed to: $INSTALL_DIR/lib"
echo "Executable installed to: $INSTALL_DIR/bin"
echo "Headers installed to: $INSTALL_DIR/include/"
