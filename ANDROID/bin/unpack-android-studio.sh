#!/bin/bash

set -o nounset
set -o errexit
set -o verbose

VERSION="1.2.2.0"
BUILD_NO="141.1980579"
DOWNLOAD_DIR="$HOME/Downloads"

ZIP_FILE="$DOWNLOAD_DIR/android-studio-ide-$BUILD_NO-linux.zip"
DEVELOPMENT_DIR=~/Development
mkdir --parent ~/Development
unzip $ZIP_FILE -d ~/Development

#        To set up Android Studio on Linux:

# Unpack the downloaded Tar file, android-studio-ide-<version>-linux.zip, into an appropriate location for your applications.
# To launch Android Studio, navigate to the android-studio/bin/ directory in a terminal and execute studio.sh.
# You may want to add android-studio/bin/ to your PATH environmental variable so that you can start Android Studio from any directory.
# Follow the links to install the SDK outside of the Android Studio directories.
