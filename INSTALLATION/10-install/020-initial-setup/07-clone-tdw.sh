#!/bin/bash
set -o errexit
set -o nounset

git config --global user.email "troydwill@gmail.com"
git config --global user.name "Troy Will"
git clone git@github.com:troywill/tdw.git
