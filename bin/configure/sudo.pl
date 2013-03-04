#!/usr/bin/env perl

use warnings;
use strict;

print "User? ";
chomp(my $user = <STDIN>);

open ( my $out, '>>', '/etc/sudoers' );
print $out <<"END";
### Following lines added by sudo.pl
# Defaults specification
Defaults:troy timestamp_timeout=-1
Defaults !tty_tickets
# User privilege specification
root    ALL=(ALL) ALL
$user   ALL=(ALL) ALL
END

sub run_command {
    my $command = shift;
    print "=> $command\n";
    system $command;
}
