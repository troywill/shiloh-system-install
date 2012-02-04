#!/bin/sh
EDITOR="emacs -nw"
CONF_FILE="/etc/rc.conf"
pacman --sync apache
echo '# httpd' >> ${CONF_FILE}
${EDITOR} ${CONF_FILE}
