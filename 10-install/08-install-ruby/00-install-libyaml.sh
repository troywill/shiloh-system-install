#!/bin/bash
set -o errexit
set -o nounset

source ../simplelib.sh
$SYSTEM_PACKAGE_INSTALL libyaml
