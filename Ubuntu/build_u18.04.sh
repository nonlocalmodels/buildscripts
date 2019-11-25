#!/bin/bash

# local directory with external libraries
local="${HOME}/Softwares/local_pd"

# clean previous build files (optional)
./clean.sh

#
# dependencies
#

# boost
# sudo apt-get install libboost-dev

# vtk
# sudo apt-get install libvtk7-dev

# yaml-cpp
# sudo apt-get install libyaml-cpp-dev

# hwloc
# sudo apt-get install libhwloc-dev

# jemalloc
# sudo apt-get install libjemalloc-dev

# hpx (Built with jemalloc 4.4.0 with cmake flag -DHPX_WITH_MALLOC=jemalloc)
hpx_dir="$local/hpx/1.3.0"

# blaze
blaze_dir="$local/blaze/3.5"

# blazeiterative (master branch date: 13 October 2019)
blazeit_dir="$local/blazeit/13Oct19"

# target directory where code will be built
target_build=$pwd

# source
source="../NLMech"

# run cmake with flags
# Note: add following flag for building new version with Quasistatic
# -DBLAZEITERATIVE_DIR="$blazeit_dir" 
#
cmake 	-DHPX_DIR="$hpx_dir/lib/cmake/HPX" \
 	-Dblaze_DIR="$blaze_dir/share/blaze/cmake" \
 	-Dblaze_INCLUDE_DIR="$blaze_dir/include" \
	-DCMAKE_INSTALL_PREFIX="$target_build" \
	-DBLAZEITERATIVE_INCLUDE="$blazeit_dir/include/BlazeIterative" \
	-DCMAKE_BUILD_TYPE=Release \
	"$source"

# make
make -j 8
