#!/bin/bash
set -o errexit
set -o nounset
set -o verbose

EDITOR=emacs
RUBYVERSION="1.9.3-p0"
PREFIX=/usr/local

./configure --prefix=$PREFIX --bindir=$PREFIX/bin/ruby-$RUBYVERSION --mandir=$PREFIX/man
make
make test
sudo make DESTDIR=/stow/ruby-${RUBYVERSION} install
sudo rm --interactive --recursive /usr/local/lib/ruby
sudo stow ruby-${RUBYVERSION}
echo "# /usr/local/bin/ruby-$RUBYVERSION" >> /tmp/tmp_profile
sudo $EDITOR /etc/profile
