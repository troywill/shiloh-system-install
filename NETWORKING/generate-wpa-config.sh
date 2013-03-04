#!/bin/bash

set -o errexit
set -o nounset
SSID="my_ssid"
PASSPHRASE="my_passphrase"

wpa_passphrase $SSID $PASSPHRASE >> wpa_supplicant.conf
