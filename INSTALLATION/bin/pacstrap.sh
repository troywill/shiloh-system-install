#!/bin/bash

set -o errexit
set -o nounset
# December 8, 2014
# INSTALL="grub-bios os-prober arch-install-scripts parted linux-lts"
INSTALL="grub-bios os-prober arch-install-scripts parted"
DEVEL="base-devel git stow cmake"
SYSTEM="ntp openssh rsync screen sudo wget pkgfile abs"
EMACS="emacs"
TEX="texlive-core texlive-latexextra"
WIRELESS="wireless_tools wpa_supplicant"
XORG="xorg-server xorg-xinit xf86-video-intel xf86-input-synaptics"
XORG_FONTS="ttf-dejavu ttf-hannom"
WEB="chromium firefox opera"
KDE="kdebase-konsole kdegraphics-gwenview kdebase-konqueror kdeedu-kstars kdebase-workspace"
LXQT="openbox"
AUDIO="alsa-utils pulseaudio-alsa pavucontrol"
VIDEO="flashplugin youtube-dl smplayer"
pacstrap /mnt base $INSTALL $DEVEL $SYSTEM $EMACS $WIRELESS $XORG $WEB $KDE $LXQT $AUDIO $VIDEO $XORG_FONTS
