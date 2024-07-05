#!/bin/bash

# Steps to install Doxygen

sudo apt-get install doxygen

export VERSION=1.9.8

wget https://www.doxygen.nl/files/doxygen-$VERSION.src.tar.gz

gunzip doxygen-$VERSION.src.tar.gz
tar xf doxygen-$VERSION.src.tar

cd doxygen-$VERSION
mkdir build
cd build

cmake -G "Unix Makefiles" ..

make

make install

echo "Doxygen Version:" $(doxygen --version)



