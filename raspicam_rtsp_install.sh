#!/bin/bash
basePath=$(pwd)
downloadsDir=${basePath}/downloads

# install v4l
sudo apt install -y autoconf gettext libtool autoconf git
cd ${downloadsDir}
git clone git://git.linuxtv.org/v4l-utils.git
cd v4l-utils
./bootstrap.sh
./configure
make
sudo make install

# install v4l2 rtsp server
sudo apt-get install cmake
cd ${downloadsDir}
git clone git@github.com:mpromonet/v4l2rtspserver.git
cd v4l2rtspserver
cmake .
make
sudo make install
