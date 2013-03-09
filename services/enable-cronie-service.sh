#!/bin/bash

set -o nounset
systemctl enable cronie.service
systemctl start cronie.service
