#!/bin/sh
EDITOR="emacs -nw"
APACHE_CONF="/etc/httpd/conf/httpd.conf"
echo 'See http://www.modrails.com/ (verified July 2012)'

if [ "$UID" -ne "0" ]; then
    echo "Please run as root user"
    exit
fi

gem install passenger --no-ri --no-rdoc
passenger-install-apache2-module

cat >> ${APACHE_CONF} <<EOF
# See http://www.modrails.com/ (January 2012) <troydwill@gmail.com>'
# LoadModule passenger_module /usr/local/lib/ruby/gems/1.9.1/gems/passenger-3.0.11/ext/apache2/mod_passenger.so
# PassengerRoot /usr/local/lib/ruby/gems/1.9.1/gems/passenger-3.0.11
# PassengerRuby /usr/local/bin/ruby-1.9.3-p0/ruby

EOF

$EDITOR $APACHE_CONF
