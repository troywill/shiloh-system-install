#!/bin/bash
set -o errexit
set -o nounset

sudo pacman --sync gsfonts

wget --no-clobber http://rubyforge.org/frs/download.php/70067/RMagick-2.13.1.tar.bz2
tar -xf RMagick-2.13.1.tar.bz2
cd RMagick-2.13.1
ruby setup.rb
sudo ruby setup.rb install

