#!/bin/bash
set -o errexit
set -o nounset

# pacman --sync perl-libwww

. ./simplelib.sh
$CPAN_INSTALL LWP::Simple
