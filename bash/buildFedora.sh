# Copyright (c) 2019 Patrick Diehl
#
# Distributed under the Boost Software License, Version 1.0. (See accompanying
# file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
#!/usr/bin/bash

# Install build tools
sudo dnf install @development-tools -y

# Install the dependencies
sudo dnf install hpx-devel cmake blaze-devel vtk-devel yaml-cpp-devel gmsh-devel

# Install blaze_Iterative
git clone https://github.com/STEllAR-GROUP/BlazeIterative.git 
cd BlazeIterative 
cmake . 
sudo make install &
cd .. 
rm -rf BlazeIterative

git clone https://github.com/nonlocalmodels/NLMech.git  --depth=1
cd NLMech
mkdir build
cd build
cmake -DHPX_IGNORE_COMPILER_COMPATIBILITY=ON -DCMAKE_BUILD_TYPE=Release ..
make -j
