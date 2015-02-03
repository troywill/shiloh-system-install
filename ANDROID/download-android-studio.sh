#!/bin/bash

set -o nounset
set -o errexit
set -o verbose
VERSION="1.0.1"
BUILD_NO="135.1641136"
ZIP_FILE="android-studio-ide-${BUILD_NO}-linux.zip"
DOWNLOAD_URL="https://dl.google.com/android/studio/ide-zips/${VERSION}/${ZIP_FILE}"
echo "Downloading ${DOWNLOAD_URL}"
wget ${DOWNLOAD_URL}
