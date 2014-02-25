#!/bin/sh
cp -vf PKGBUILD PKGBUILD.bak
makepkg --syncdeps
mv -v  PKGBUILD.bak PKGBUILD
