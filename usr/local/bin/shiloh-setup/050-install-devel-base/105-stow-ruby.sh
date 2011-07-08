#!/bin/bash
set -o errexit
set -o nounset

./configure --prefix=/usr/local
make
make test && sudo make DESTDIR=/stow/ruby-1.9.2-p180 install
