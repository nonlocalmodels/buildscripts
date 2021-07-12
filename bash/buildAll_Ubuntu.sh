# Copyright (c) 2019 Patrick Diehl
#
# Distributed under the Boost Software License, Version 1.0. (See accompanying
# file LICENSE_1_0.txt or copy at http://www.boost.org/LICENSE_1_0.txt)
#!/usr/bin/bash

git clone https://github.com/nonlocalmodels/HPCBuildInfrastructure.git
cd HPCBuildInfrastructure/
echo "Building cmake"
./build-all.sh Release without-gcc cmake
echo "Building HPX"
./build-all.sh Release without-gcc hwloc
./build-all.sh Release without-gcc jemalloc
./build-all.sh Release without-gcc boost
./build-all.sh Release without-gcc hpx
echo "Building Blaze and BlazeIterative"
./build-all.sh Release without-gcc blaze
./build-all.sh Release without-gcc blazeIterative
echo "Building VTK"
./build-all.sh Release without-gcc vtk
echo "Building yaml-cpp"
./build-all.sh Release without-gcc yamlcpp
echo "Building NLmech"
./build-all.sh Release without-gcc NLMech
