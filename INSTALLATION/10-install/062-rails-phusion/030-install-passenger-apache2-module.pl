#!/usr/bin/env perl
use warnings;
use strict;
use FindBin qw($Bin);
use lib "$Bin/../lib";
require "shiloh-setup-common.pm";

&check_root;

my $glibc_version = '';

system("passenger-install-apache2-module");
