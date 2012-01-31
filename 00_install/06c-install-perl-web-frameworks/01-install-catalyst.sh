#!/bin/bash
set -o errexit
set -o nounset

. ./simplelib.sh
$CPAN_INSTALLER Catalyst::Runtime
$CPAN_INSTALLER Catalyst::Devel
