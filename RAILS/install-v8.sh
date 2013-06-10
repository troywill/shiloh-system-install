#!/bin/sh

sudo pacman --sync v8
gem install libv8 -- --with-system-v8
