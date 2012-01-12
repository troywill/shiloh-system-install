#!/bin/bash
VERSION="5.14.2"
sh Configure -de -Dprefix=/usr/local -Dbin=/usr/local/bin/perl-${VERSION} -Dsitebin=/usr/local/bin/perl-${VERSION}
make
make test
sudo make DESTDIR=/stow/perl-${VERSION} install
