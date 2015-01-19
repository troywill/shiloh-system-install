#!/bin/bash

set -o errexit
set -o nounset
# September 5, 2014
# INSTALL="grub-bios os-prober arch-install-scripts parted linux-lts"
INSTALL="grub-bios"
DEVEL="base-devel git cmake"
SYSTEM="openssh sudo wget"
EMACS="emacs"
TEX="texlive-core texlive-latexextra"
WIRELESS="wireless_tools wpa_supplicant"
XORG="xorg-server xorg-xinit xf86-video-intel xf86-input-synaptics"
XORG_FONTS="ttf-dejavu"
WEB="chromium"
KDE="kdebase-konsole kdebase-workspace"
AUDIO="alsa-utils pulseaudio-alsa pavucontrol"
VIDEO="flashplugin youtube-dl smplayer"
pacstrap /mnt base $INSTALL $DEVEL $SYSTEM $EMACS $WIRELESS $XORG $WEB $KDE $XORG_FONTS
