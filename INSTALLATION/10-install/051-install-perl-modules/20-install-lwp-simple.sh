#!/bin/bash
set -o errexit
set -o nounset

pacman --sync perl-libwww

exit


. ./simplelib.sh
$CPAN_INSTALL LWP::Simple
