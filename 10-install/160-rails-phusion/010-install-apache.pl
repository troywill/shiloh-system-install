#!/usr/bin/env perl
use warnings;
use strict;

if ( $> != 0 ) {
    die "Please run as root user\n";
}

exit;

__END__


CONF_FILE="/etc/rc.conf"
pacman --sync apache
echo '# httpd' >> ${CONF_FILE}
${EDITOR} ${CONF_FILE}
