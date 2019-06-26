#!/usr/bin/bash

sudo dnf install hpx-devel cmake blaze-devel vtk-devel yaml-cpp-devel

git clone https://github.com/prashjha/NLMech.git
cd NLMech.git
mkdir build
cd build
cmake -DHPX_IGNORE_COMPILER_COMPATIBILITY=ON -DCMAKE_BUILD_TYPE=Release ..
make -j
