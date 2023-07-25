#!/bin/bash

appdir=/tmp/LunaDenyCakesGame.AppDir

rm -rf $appdir

mkdir $appdir
cp appruns/AppRun-x86_64 $appdir/AppRun
chmod 777 $appdir/AppRun
cp ../../graphics/main.png $appdir/LunaDenyCakesGame.png
pushd $appdir
ln -s LunaDenyCakesGame.png .DirIcon
popd

cp LunaDenyCakesGame.desktop $appdir
mkdir $appdir/usr
mkdir $appdir/usr/bin
mkdir $appdir/usr/lib

cp /usr/lib64/libvorbis* $appdir/usr/lib
cp /usr/lib64/libasound.so* $appdir/usr/lib
cp /usr/lib64/libfreetype.so* $appdir/usr/lib
cp /usr/lib64/libjpeg.so* $appdir/usr/lib
cp /usr/lib64/libopenal.so* $appdir/usr/lib
cp /usr/lib64/libatomic.so* $appdir/usr/lib
cp /usr/lib64/libGLU.so* $appdir/usr/lib
cp /usr/lib64/libharfbuzz.so* $appdir/usr/lib
cp /usr/lib64/libpng16.so* $appdir/usr/lib
cp /usr/lib64/libogg.so* $appdir/usr/lib
cp /usr/lib64/libFLAC.so* $appdir/usr/lib

cp ../../build-LunaDenyCakesGame/* $appdir/usr/bin
chmod 777 $appdir/usr/bin/LunaDenyCakesGame
cp -r ../../data/* $appdir/usr/bin

export ARCH=x86_64

appimagetool-x86_64.AppImage $appdir /tmp/LunaDenyCakesGame-0.5.0-x86_64.AppImage
