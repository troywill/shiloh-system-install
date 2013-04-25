#!/bin/bash
set -o errexit
set -o nounset

DOWNLOADER="wget --no-clobber"

do_download () {
    $DOWNLOADER $1
}

do_download "https://aur.archlinux.org/packages/ra/razor-qt/razor-qt.tar.gz"
do_download "https://aur.archlinux.org/packages/go/google-talkplugin/google-talkplugin.tar.gz"
