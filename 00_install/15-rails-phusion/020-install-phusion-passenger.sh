#!/bin/sh
EDITOR="emacs -nw"
APACHE_CONF="/etc/httpd/conf/httpd.conf"
echo 'See http://www.modrails.com/ (as of July 2011)'

if [ "$UID" -ne "0" ]; then
    echo "Please run as root user"
    exit
fi

gem install passenger --no-ri --no-rdoc
passenger-install-apache2-module


cat >> ${APACHE_CONF} <<EOF
# See http://www.modrails.com/ (as of July 2011) <troydwill@gmail.com>'
# LoadModule passenger_module /usr/lib/ruby/gems/1.9.1/gems/passenger-3.0.7/ext/apache2/mod_passenger.so
# PassengerRoot /usr/lib/ruby/gems/1.9.1/gems/passenger-3.0.7
# PassengerRuby /usr/bin/ruby                                                                     
EOF

# $EDITOR $APACHE_CONF
exit

exit
exit
exit
The Apache 2 module was successfully installed.                                                     
                                                                                                    
Please edit your Apache configuration file, and add these lines:                                    
                                                                                                    
   LoadModule passenger_module /usr/lib/ruby/gems/1.9.1/gems/passenger-3.0.7/ext/apache2/mod_passenger.so                                                                                               
   PassengerRoot /usr/lib/ruby/gems/1.9.1/gems/passenger-3.0.7                                      
   PassengerRuby /usr/bin/ruby                                                                      
                                                                                                    
After you restart Apache, you are ready to deploy any number of Ruby on Rails                       
applications on Apache, without any further Ruby on Rails-specific                                  
configuration!
