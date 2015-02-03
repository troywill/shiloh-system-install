#!/bin/bash

set -o nounset
set -o errexit

BUILD_NO="135.1641136"
ZIP_FILE="$HOME/Downloads/android-studio-ide-$BUILD_NO-linux.zip"
DEVELOPMENT_DIR=~/Development
mkdir --parents ~/Development
unzip $ZIP_FILE -d ~/Development

#        To set up Android Studio on Linux:

# Unpack the downloaded Tar file, android-studio-ide-<version>-linux.zip, into an appropriate location for your applications.
# To launch Android Studio, navigate to the android-studio/bin/ directory in a terminal and execute studio.sh.
# You may want to add android-studio/bin/ to your PATH environmental variable so that you can start Android Studio from any directory.
# Follow the links to install the SDK outside of the Android Studio directories.
