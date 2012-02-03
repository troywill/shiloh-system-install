#!/usr/bin/env perl
use warnings;
use strict;

print "Which user to add? ";
chomp(my $user = <STDIN>);

&run_command ( "useradd --group users --groups audio,network,optical,storage,video,http --create-home ${user}");
&run_command ( "passwd ${user}");

sub run_command {
    my $command = shift;
    print "=> $command\n";
    system $command;
}

__END__

gpasswd --add troy audio,network,optical,storage,video,http
