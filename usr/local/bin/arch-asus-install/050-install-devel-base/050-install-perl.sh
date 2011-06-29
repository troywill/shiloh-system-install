#!/bin/bash
wget www.cpan.org/src/5.0/perl-5.14.1.tar.gz
exit
sh Configure -de
make
make test
sudo make DESTDIR=/stow/perl-5.14.1 install
