#!/bin/sh
pacman --sync postgresql

# https://wiki.archlinux.org/index.php/PostgreSQL
# sudo -i -u postgres or su root; su - postgres
# createuser -s -U postgres
# Enter name of role to add: myUsualArchLoginName
