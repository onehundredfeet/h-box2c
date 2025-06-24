#!/bin/bash

if [[ "$(uname)" == "Darwin" ]]; then
    echo "Running on macOS"

    cmake -GNinja -B build/debug/box2d -DCMAKE_INSTALL_PREFIX=./lib/debug/box2d -DBOX2D_SAMPLES=OFF -DBOX2D_VALIDATE=OFF -DBOX2D_UNIT_TESTS=OFF -DCMAKE_BUILD_TYPE=Debug ext/box2d
    cmake --build build/debug/box2d --config Debug
    cmake --install build/debug/box2d --config Debug

    cmake -GNinja -B build/release/box2d -DCMAKE_INSTALL_PREFIX=./lib/release/box2d -DBOX2D_SAMPLES=OFF -DBOX2D_VALIDATE=OFF -DBOX2D_UNIT_TESTS=OFF -DCMAKE_BUILD_TYPE=Release ext/box2d
    cmake --build build/release/box2d --config Release
    cmake --install build/release/box2d --config Release

# enkiTS

# option( ENKITS_BUILD_C_INTERFACE    "Build C interface" ON )
# option( ENKITS_BUILD_EXAMPLES       "Build example applications" ON )
# option( ENKITS_BUILD_SHARED         "Build shared library" OFF )
# option( ENKITS_INSTALL              "Generate installation target" OFF )
# option( ENKITS_SANITIZE             "Build with sanitizers" OFF)

    cmake -GNinja -B build/debug/enkiTS -DCMAKE_INSTALL_PREFIX=./lib/debug/enkiTS -DENKITS_BUILD_EXAMPLES=OFF -DENKITS_INSTALL=ON -DCMAKE_BUILD_TYPE=Debug ext/enkiTS
    cmake --build build/debug/enkiTS --config Debug
    cmake --install build/debug/enkiTS --config Debug

    cmake -GNinja -B build/release/enkiTS -DCMAKE_INSTALL_PREFIX=./lib/release/enkiTS -DENKITS_BUILD_EXAMPLES=OFF -DENKITS_INSTALL=ON -DCMAKE_BUILD_TYPE=Release ext/enkiTS
    cmake --build build/release/enkiTS --config Release
    cmake --install build/release/enkiTS --config Release


else
   echo "Not Running on macOS"
 
fi



	
