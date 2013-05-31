#!/bin/bash
set -o errexit
set -o nounset
set -o verbose

VERSION="5.18.0"
PREFIX="/usr/local"
BINDIR="/usr/local/bin/perl-${VERSION}"
SITEBINDIR=${BINDIR}
sh Configure -de -Dprefix=${PREFIX} -Dbin=${BINDIR} -Dsitebin=${SITEBINDIR}
make
make test
sudo make DESTDIR=/stow/perl-${VERSION} install
