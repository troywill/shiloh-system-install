#!/bin/bash

set -o nounset
set -o errexit
set -o verbose

VERSION="1.2.1.1"
BUILD_NO="141.1903250"
DOWNLOAD_DIR="$HOME/Downloads"

# https://dl.google.com/dl/android/studio/ide-zips/1.2.1.1/android-studio-ide-141.1903250-linux.zip

ZIP_FILE="$DOWNLOAD_DIR/android-studio-ide-$BUILD_NO-linux.zip"
DEVELOPMENT_DIR=~/Development
mkdir --parents ~/Development
unzip $ZIP_FILE -d ~/Development

#        To set up Android Studio on Linux:

# Unpack the downloaded Tar file, android-studio-ide-<version>-linux.zip, into an appropriate location for your applications.
# To launch Android Studio, navigate to the android-studio/bin/ directory in a terminal and execute studio.sh.
# You may want to add android-studio/bin/ to your PATH environmental variable so that you can start Android Studio from any directory.
# Follow the links to install the SDK outside of the Android Studio directories.
