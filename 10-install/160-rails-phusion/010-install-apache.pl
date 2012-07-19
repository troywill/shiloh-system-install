#!/usr/bin/env perl
use warnings;
use strict;

# Is apache installed?
chomp(my $apache_query = `pacman --query apache 2>/dev/null`);
if ( $apache_query ) {
    print "$apache_query is installed\n";
} else {
    print "Apache is not installed\n";
}
exit;
__END__


if ( $> != 0 ) {
    die "Please run as root user\n";
}

CONF_FILE="/etc/rc.conf"
pacman --sync apache
echo '# httpd' >> ${CONF_FILE}
${EDITOR} ${CONF_FILE}
