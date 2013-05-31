#!/bin/bash

dd if=/dev/sda conv=sync,noerror bs=64k | gzip -c > sda.img.2012.08.31.dell.gz
