#!/bin/bash
# A script for compiling the Voro++ library into a JavaScript
# module using Emscripten.

# Stop on first error
set -e

# Create the output directory if it doesn't exist
mkdir -p bin

echo "Compiling Voro++ to WASM..."

# The '-s SINGLE_FILE=1' flag is crucial. It embeds the .wasm file directly
# into the JavaScript file as a Base64 string. This creates a single,
# self-contained module that can be easily served without 404 errors.
emcc \
  --bind \
  -I src \
  -s MODULARIZE=1 \
  -s EXPORT_ES6=1 \
  -s 'EXPORT_NAME="voro"' \
  -s ASSERTIONS=1 \
  -s TOTAL_MEMORY=256MB \
  -s ALLOW_MEMORY_GROWTH=1 \
  -s SINGLE_FILE=1 \
  -Os \
  -o bin/voro_raw.js \
  src/embindings.cc src/voro++.cc

echo "Build complete. Output is in ./bin/voro_raw.js"
