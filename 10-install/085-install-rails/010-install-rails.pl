#!/usr/bin/env perl

use warnings;
use strict;

if ( $> != 0 ) {
    die "Please run as root user\n";
}

&install_rails;

sub install_rails {
    open ( my $logfile, ">>", "/var/log/shilohsystem.log" ) or die "Unable to open /var/log/shilohsystem.log";
    chomp (my $date = `date`);
    print $logfile "$date: gem install rails --no-ri --no-rdoc\n";
    print `gem install rails --no-ri --no-rdoc`;
}
