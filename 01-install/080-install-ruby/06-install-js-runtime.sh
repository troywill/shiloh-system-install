#!/bin/bash
set -o errexit
set -o nounset

. ./simplelib.sh
$GEM_INSTALL therubyracer $GEM_FLAGS
