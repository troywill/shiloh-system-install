#!/bin/bash
set -o errexit
set -o nounset

DOWNLOADER="wget --no-clobber"
BASE_URL="https://aur.archlinux.org/packages"

do_download () {
    $DOWNLOADER $1
}

do_download "${BASE_URL}/ra/razor-qt/razor-qt.tar.gz"
do_download "${BASE_URL}/go/google-talkplugin/google-talkplugin.tar.gz"
do_download "${BASE_URL}/em/emacs-org-mode/emacs-org-mode.tar.gz"
