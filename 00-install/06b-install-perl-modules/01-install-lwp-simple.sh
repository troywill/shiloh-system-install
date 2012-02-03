#!/bin/bash
set -o errexit
set -o nounset

. ./simplelib.sh
$CPAN_INSTALLER LWP::Simple
