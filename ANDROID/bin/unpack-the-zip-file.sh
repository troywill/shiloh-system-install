#!/usr/bin/bash

set -o errexit
ZIP_FILE="adt-bundle-linux-x86-20140321.zip"
DEVELOPMENT_DIR=~/Development
mkdir --parent ${DEVELOPMENT_DIR}
cd $DEVELOPMENT_DIR
unzip ~/Downloads/${ZIP_FILE} -d .
