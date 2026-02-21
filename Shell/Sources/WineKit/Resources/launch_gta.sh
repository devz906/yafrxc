#!/bin/bash
export PATH=$PATH:$(pwd)/bin
export LD_LIBRARY_PATH=$(pwd)/lib
./bin/box64 ./bin/wine64 explorer.exe
