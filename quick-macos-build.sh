#!/bin/bash

set -e  # Exit on any error

echo "Building godot_dart C++ extension..."

cd "$(dirname "$0")/packages/godot_dart/src/cpp"

echo "Configuring build with CMake..."
cmake -DCMAKE_BUILD_TYPE=Release . -B "build"

echo "Building project..."
cmake --build build --config release

if [ ! -f "build/libgodot_dart.dylib" ]; then
    echo "Error: Build failed - libgodot_dart.dylib not found in build directory"
    exit 1
fi

EXAMPLE_MACOS_DIR="../../../../example/macos"
echo "Copying libgodot_dart.dylib to example directory..."

if [ ! -d "$EXAMPLE_MACOS_DIR" ]; then
    echo "Error: Example macOS directory not found at $EXAMPLE_MACOS_DIR"
    exit 1
fi

cp build/libgodot_dart.dylib "$EXAMPLE_MACOS_DIR/"

echo "✅ Build completed successfully!"
echo "   - Built: $(pwd)/build/libgodot_dart.dylib"
echo "   - Copied to: $EXAMPLE_MACOS_DIR/libgodot_dart.dylib"