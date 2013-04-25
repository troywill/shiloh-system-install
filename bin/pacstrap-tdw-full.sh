#!/bin/bash

set -o errexit
set -o nounset
# Thursday, April 25, 2013 3:09 PM
INSTALL="grub-bios os-prober arch-install-scripts parted"
DEVEL="base-devel git stow cmake"
SYSTEM="ntp openssh rsync screen sudo wget pkgfile abs"
EMACS="emacs"
TEX="texlive-core texlive-latexextra"
WIRELESS="wireless_tools wpa_supplicant"
XORG="xorg-server xorg-xinit xf86-video-intel xf86-input-synaptics"
XORG_FONTS="ttf-dejavu ttf-hannom"
WEB="chromium firefox opera"
KDE="kdebase-konsole kdegraphics-gwenview kdebase-konqueror kdeedu-kstars"
RAZORQT="openbox"
AUDIO="alsa-utils"
VIDEO="flashplugin youtube-dl smplayer"
pacstrap /mnt base $INSTALL $DEVEL $SYSTEM $EMACS $WIRELESS $XORG $WEB $KDE $RAZORQT $AUDIO $VIDEO $XORG_FONTS
