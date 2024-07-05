# Steps to install Doxygen
# Doxygen prerequisites flex, bison, make are already installed on Ubuntu-22.04 free runner

sudo apt-get install doxygen

export VERSION=1.11.0

wget https://www.doxygen.nl/files/doxygen-$VERSION.src.tar.gz

gunzip doxygen-$VERSION.src.tar.gz
tar xf doxygen-$VERSION.src.tar

cd doxygen-$VERSION
mkdir build
cd build

cmake -G "Unix Makefiles" ..

make

make install

echo $(doxygen --version)

#sudo apt-get install libiconv # Needed? Already there? 

#export VERSION=1.11.0
#gunzip doxygen-1.11.0.src.tar.gz    # uncompress the archive
#tar xf doxygen-1.11.0.src.tar






