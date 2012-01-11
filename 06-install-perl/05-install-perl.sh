#!/bin/bash
VERSION="5.14.2"
wget www.cpan.org/src/5.0/perl-${VERSION}.tar.bz2
exit
sh Configure -de -Dprefix=/usr/local -Dbin=/usr/local/bin/perl-${VERSION}
make
make test
sudo make DESTDIR=/stow/perl-${VERSION} install

