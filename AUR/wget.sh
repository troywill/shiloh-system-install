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
do_download "${BASE_URL}/go/google-earth/google-earth.tar.gz"

# QGIS
do_download "${BASE_URL}/qg/qgis/qgis.tar.gz"
do_download "${BASE_URL}/py/pyqt4dev/pyqt4dev.tar.gz"
do_download "${BASE_URL}/qg/qgis-git/qgis-git.tar.gz"
do_download "${BASE_URL}/li/libspatialite/libspatialite.tar.gz"
do_download "${BASE_URL}/li/libfreexl/libfreexl.tar.gz"
do_download "${BASE_URL}/sp/spatialindex/spatialindex.tar.gz"
do_download "${BASE_URL}/li/libspatialite/libspatialite.tar.gz"
do_download "${BASE_URL}/qw/qwtpolar-svn-qt4/qwtpolar-svn-qt4.tar.gz"
