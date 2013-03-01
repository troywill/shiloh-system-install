#!/bin/bash

set -o errexit
set -o nounset
INSTALL="grub-bios os-prober"
DEVEL="base-devel git stow"
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
pacstrap /mnt base $INSTALL $DEVEL $SYSTEM $EMACS $WIRELESS $XORG $WEB $KDE $AUDIO $VIDEO $XORG_FONTS
