#!/bin/bash
mv -v /mnt/boot/grub/menu.lst /mnt/boot/grub/menu.lst.archinstall
cp -v /boot/grub/menu.lst /mnt/boot/grub/
emacs /mnt/boot/grub/menu.lst
