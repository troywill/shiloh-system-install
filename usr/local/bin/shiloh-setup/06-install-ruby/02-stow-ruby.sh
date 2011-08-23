#!/bin/bash
set -o errexit
set -o nounset

RUBYVERSION="1.9.2-p290"

./configure --prefix=/usr/local --bindir=/usr/local/bin/ruby-${RUBYVERSION} \
    && make \
    && make test \
    && sudo make DESTDIR=/stow/ruby-${RUBYVERSION} install && cd /stow/ \
    && tar -cjvf ${RUBYVERSION}.stow.tar.bz2
