#!/bin/bash
set -o errexit
set -o nounset

# 2012-02-03
VERSION=5.14.2
wget --no-clobber www.cpan.org/src/5.0/perl-${VERSION}.tar.bz2
