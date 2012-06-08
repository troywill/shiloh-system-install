#!/bin/bash
set -o errexit
set -o nounset

pacman --sync cpanminus

exit
curl -L http://cpanmin.us | perl - --sudo App::cpanminus


# cpan App::cpanminus
