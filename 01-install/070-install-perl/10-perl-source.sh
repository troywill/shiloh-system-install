#!/bin/bash
set -o errexit
set -o nounset

source ../simplelib.sh
wget --no-clobber www.cpan.org/src/5.0/perl-${PERL_VERSION}.tar.bz2
