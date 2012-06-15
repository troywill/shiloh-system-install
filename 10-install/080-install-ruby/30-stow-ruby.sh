#!/bin/bash
set -o errexit
set -o nounset
set -o verbose

EDITOR=emacs
source ./ruby-version
# RUBYVERSION="1.9.3-p0"
PREFIX=/usr/local

./configure --prefix=$PREFIX --bindir=$PREFIX/bin/ruby-$RUBY_VERSION --mandir=$PREFIX/man \
    --disable-install-doc \
    --disable-install-rdoc \
    --disable-install-capi
make
# make test
sudo make DESTDIR=/stow/ruby-${RUBY_VERSION} install
sudo rm --interactive --recursive /usr/local/lib/ruby
sudo stow ruby-${RUBY_VERSION}
echo "# /usr/local/bin/ruby-$RUBY_VERSION" >> /tmp/tmp_profile
sudo $EDITOR /etc/profile
