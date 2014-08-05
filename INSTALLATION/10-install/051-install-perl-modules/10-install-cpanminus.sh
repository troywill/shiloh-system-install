#!/bin/bash
set -o errexit
set -o nounset

curl -L http://cpanmin.us | perl - --sudo App::cpanminus

exit
pacman --sync cpanminus



# cpan App::cpanminus
