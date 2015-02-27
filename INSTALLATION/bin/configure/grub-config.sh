#!/bin/bash

set -o verbose

grub-mkconfig -o /boot/grub/grub.cfg
