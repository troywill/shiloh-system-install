#!/bin/bash
set -o errexit
set -o nounset

curl -L http://cpanmin.us | perl - --sudo App::cpanminus


# cpan App::cpanminus
