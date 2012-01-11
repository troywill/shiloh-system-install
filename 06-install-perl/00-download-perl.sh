#!/bin/sh
wget www.cpan.org/src/5.0/perl-5.14.2.tar.bz2
exit
sh Configure -de
make
make test
sudo make DESTDIR=/stow/perl-5.14.1 install
