#!/bin/bash

set -o nounset
set -o errexit
set -o verbose

TARGET=/mnt/home/troy/

cp -av ~/.emacs $TARGET
cp -av ~/rcs $TARGET
cp -av ~/.git $TARGET
cp -av ~/.ssh $TARGET
cp -av ~/.bash* $TARGET
cp -av ~/wireless $TARGET
cp -av ~/bin $TARGET
