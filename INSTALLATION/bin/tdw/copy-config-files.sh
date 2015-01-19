#!/bin/bash

set -o nounset
set -o errexit
set -o verbose

SOURCE_DIR=/home/troy
TARGET=/mnt/home/troy/

cp -av ${SOURCE_DIR}/.emacs $TARGET
# cp -av ${SOURCE_DIR}/rcs $TARGET
cp -av ${SOURCE_DIR}/.gitconfig $TARGET
cp -av ${SOURCE_DIR}/.ssh $TARGET
cp -av ${SOURCE_DIR}/.bash* $TARGET
cp -av ${SOURCE_DIR}/wireless $TARGET
cp -av ${SOURCE_DIR}/bin $TARGET
