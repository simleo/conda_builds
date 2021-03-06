#!/bin/bash

mkdir build
cd build
cmake -DBUILD_EXAMPLES=OFF \
      -DBUILD_SHARED_LIBS=ON \
      -DBUILD_PROTOBUF=ON \
      -DBUILD_HPC=OFF \
      -DBUILD_TESTS=OFF \
      -DCMAKE_INSTALL_PREFIX=${PREFIX} \
      -DBUILD_TARGET=CPU \
      -DBUILD_SUPERBUILD=OFF \
      ${SRC_DIR}
make -j${CPU_COUNT}
make install
