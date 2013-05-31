#!/bin/bash

dd if=/dev/sda bs=4096 | gzip -c > sda.img.2012.08.31.dell.gz
