#!/bin/bash

# This build script compiles the src files and creates a wasm and js file in dist/

# emcc -O3 --bind -o ./dist/voro.js $(find ./src -type f -name "*.cc")

emcc -O3 --bind -o ./dist/voro.js -s SINGLE_FILE=1 $(find ./src -type f -name "*.cc")

# To generate the typescript definition file as well run:
# emcc -O3 --bind --embind-emit-tsd ./dist/voro.d.ts -o ./dist/voro.js $(find ./src -type f -name "*.cc")
