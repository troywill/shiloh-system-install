#!/usr/bin/env perl
use warnings;
use strict;

if ( $> != 0 ) {
    die "Please run as root user\n";
}

&install_sqlite;

sub install_sqlite {
    open ( my $logfile, ">>", "/var/log/shilohsystem.log" ) or die "Unable to open /var/log/shilohsystem.log";
    chomp (my $date = `date`);
    print $logfile "$date: gem install therubyracer --no-ri --no-rdoc\n";
    print `gem install therubyracer --no-ri --no-rdoc`;
}


sudo gem install sqlite3 --no-ri --no-rdoc
