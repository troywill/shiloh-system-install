#!/bin/sh
df --human /usr/ >> /tmp/kde-meta.log
pacman --sync kde-meta
df --human /usr/ >> /tmp/kde-meta.log
