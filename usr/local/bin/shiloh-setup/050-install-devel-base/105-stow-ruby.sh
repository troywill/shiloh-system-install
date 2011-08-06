#!/bin/bash
set -o errexit
set -o nounset

./configure --prefix=/usr/local
make
make test && sudo make DESTDIR=/stow/ruby-1.9.2-p290 install && cd /stow/ \
    && tar -cjvf ruby-1.9.2-p290.stow.tar.bz2

