#!/bin/bash
AIF='aif'
LIBUI="libui-sh"
remove_aif () {
    sudo pacman --remove ${AIF}
    stow -D ${AIF}
    rm -rf /stow/${AIF}
}
install_aif () {
    git clone git://projects.archlinux.org/aif.git
    cd aif && git checkout develop && make DESTDIR=/stow/${AIF} install
    stow ${AIF}
}
remove_libui () {
    sudo pacman --remove ${LIBUI}
    stow -D  ${LIBUI}
    rm -rf /stow/${LIBUI}
}
install_libui () {
    git clone https://github.com/Dieterbe/libui-sh.git
    cd ${LIBUI} && git checkout develop && make DESTDIR=/stow/${LIBUI} install
    stow ${LIBUI}
}
# Main program
remove_aif
install_aif
remove_libui
install_libui

