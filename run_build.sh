#!/bin/bash

mkdir -p ./build && cd ./build

export DMD=/usr/local/bin/ldmd2

cmake -G Ninja -DLLVM_CONFIG=/usr/local/bin/llvm-config -DLLVM_LDFLAGS="--as-needed -allow-undefined" ..

ninja -j 4
