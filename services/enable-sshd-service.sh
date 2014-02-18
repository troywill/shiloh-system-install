#!/bin/bash

set -o nounset
systemctl start sshd.service
systemctl enable sshd.service
