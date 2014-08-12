#!/bin/bash

set -o nounset
PACKAGE=$1      
PATH_TO_DB="/srv/http/shiloh.db.tar.bz2"
# repo-add [options] <path-to-db> <package|delta> [<package|delta> ...]
repo-add ${PATH_TO_DB} ${PACKAGE}
