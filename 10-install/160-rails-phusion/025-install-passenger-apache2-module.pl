#!/usr/bin/env perl
$| = 0;
use warnings;
use strict;

if ( $> != 0 ) {
    die "Please run as root user\n";
}

my $glibc_version = '';

system("passenger-install-apache2-module");
