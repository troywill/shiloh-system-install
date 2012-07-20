#!/usr/bin/env perl
use warnings;
use strict;
use FindBin qw($Bin);
use lib "$Bin/../lib";

require "shiloh-setup-common.pm";

&check_root;
&install_passenger;

sub install_passenger {
    my $logfile = &logfile_handle;
    print $logfile &log_date, " gem install passenger --no-ri --no-rdoc\n";
    system("gem install passenger --no-ri --no-rdoc");
}
