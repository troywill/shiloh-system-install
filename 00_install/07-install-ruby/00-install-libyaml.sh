#!/bin/bash
set -o errexit
set -o nounset

. ./simplelib.sh
$SYSTEM_PACKAGE_INSTALL libyaml
