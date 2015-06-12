#!/bin/bash

set -o nounset
 set -o errexit
 set -o verbose

 VERSION="1.2.2.0"
 BUILD_NO="141.1980579"
 DOWNLOAD_DIR="$HOME/Downloads"
 
ZIP_FILE="android-studio-ide-${BUILD_NO}-linux.zip"
 DOWNLOAD_URL="https://dl.google.com/android/studio/ide-zips/${VERSION}/${ZIP_FILE}"

 mkdir --parent ${DOWNLOAD_DIR}
 cd ${DOWNLOAD_DIR}
     
 echo "Downloading ${DOWNLOAD_URL}"
 wget ${DOWNLOAD_URL}
