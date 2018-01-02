#! /bin/sh

sudo apt-get update
sudo apt-get --yes install libfontconfig-dev qt5-default automake mercurial libtool libfreeimage-dev libopenal-dev libpango1.0-dev libsndfile-dev libudev-dev libtiff5-dev libwebp-dev libasound2-dev libaudio-dev libxrandr-dev libxcursor-dev libxi-dev libxinerama-dev libxss-dev libesd0-dev freeglut3-dev libmodplug-dev libsmpeg-dev

cd libsdl2/SDL2-2.0.7
dpkg-buildpackage
cd ../..

sudo dpkg --install libsdl2/libsdl2-rpifb_2.0.7_armhf.deb libsdl2/libsdl2-rpifb-dev_2.0.7_armhf.deb

cd libsdl2-ttf/SDL2_ttf-2.0.14
dpkg-buildpackage
cd ../..

find . -type name \*.deb -print
