#!/bin/sh
INSTALL_DIR=../doxyrest/builds/linux

rm -rf _build
mkdir _build
cd _build
cmake -DCMAKE_INSTALL_PREFIX=$INSTALL_DIR ..
rm -rf $INSTALL_DIR
cmake --build . --target install
echo installed doxyrest here: $INSTALL_DIR
