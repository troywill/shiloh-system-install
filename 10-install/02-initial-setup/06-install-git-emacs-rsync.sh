#!/bin/bash
set -o errexit
set -o nounset

pacman --sync git emacs rsync
