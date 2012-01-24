#!/bin/bash
set -o errexit
set -o nounset

RUBYVERSION="1.9.3-p0"

./configure --prefix=/usr/local --bindir=/usr/local/bin/ruby-${RUBYVERSION} --mandir=/usr/local/man
make
make test
sudo rm --interactive --recursive /usr/local/lib/ruby
sudo make DESTDIR=/stow/ruby-${RUBYVERSION} install
