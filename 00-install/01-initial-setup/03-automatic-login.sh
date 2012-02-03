#!/bin/bash
set -o errexit
set -o nounset
EDITOR='emacs --no-window-system'

# 2011-05-08 Do Web search on "Automatic login to virtual console"
# c1:2345:respawn:/sbin/mingetty --autologin USERNAME tty1 linux

cp -iv inittab.troy /etc
cp -iv inittab.troy /etc/inittab
cp --verbose mingetty /sbin
${EDITOR} /etc/inittab
