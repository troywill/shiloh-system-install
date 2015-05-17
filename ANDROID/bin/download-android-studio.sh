#!/bin/bash

set -o nounset
set -o errexit
set -o verbose

VERSION="1.2.1.1"
BUILD_NO="141.1903250"
DOWNLOAD_DIR="$HOME/Downloads"

ZIP_FILE="android-studio-ide-${BUILD_NO}-linux.zip"
DOWNLOAD_URL="https://dl.google.com/android/studio/ide-zips/${VERSION}/${ZIP_FILE}"

mkdir --parent ${DOWNLOAD_DIR}
cd ${DOWNLOAD_DIR}
     
echo "Downloading ${DOWNLOAD_URL}"
wget ${DOWNLOAD_URL}
