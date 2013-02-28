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
WEB="chromium"
XORG_FONTS="ttf-dejavu ttf-hannom"
KDE="kdebase-konsole kdegraphics-gwenview kdebase-konqueror kdeedu-kstars"
AUDIO="alsa-utils"
VIDEO="flashplugin youtube-dl smplayer"
pacstrap /mnt base $INSTALL $DEVEL $SYSTEM $EMACS $WIRELESS $XORG $WEB $KDE $AUDIO $VIDEO $XORG_FONTS
