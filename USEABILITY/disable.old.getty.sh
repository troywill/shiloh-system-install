#!/bin/bash

set -o errexit
set -o nounset
sudo systemctl daemon-reload
sudo systemctl disable getty@tty1
sudo systemctl enable autologin@tty1
sudo systemctl start autologin@tty1
