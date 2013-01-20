#!/usr/bin/env perl

use warnings;
use strict;
my $regexp = '\* DONE';
my $replacement = '* TODO';
open(my $oldorg, "<", "install-shilohsystem.org")      # open for update
    or die "Can't open 'install-shilohsystem.org' for reading: $!";
open(my $neworg, ">", "install-shilohsystem.org.bak")
    or die "Can't open 'install-shilohsystem.org.bak' for writing: $!";
while (<$oldorg>) {
    s/$regexp/$replacement/;
    print $neworg $_ or die "can't write $neworg: $!";
}
close($oldorg)            or die "can't close $oldorg: $!";
close($neworg)            or die "can't close $neworg: $!";
rename("install-shilohsystem.org.bak", "install-shilohsystem.org")   or die "can't rename install-shilohsystem.org.bak install-shilohsystem.org: $!";

##########
$regexp = '[X]';
$replacement = '[ ]';
open($oldorg, "<", "install-shilohsystem.org")      # open for update
    or die "Can't open 'install-shilohsystem.org' for reading: $!";
open($neworg, ">", "install-shilohsystem.org.bak")
    or die "Can't open 'install-shilohsystem.org.bak' for writing: $!";
while (<$oldorg>) {
    s/$regexp/$replacement/;
    print $neworg $_ or die "can't write $neworg: $!";
}
close($oldorg)            or die "can't close $oldorg: $!";
close($neworg)            or die "can't close $neworg: $!";
rename("install-shilohsystem.org.bak", "install-shilohsystem.org")   or die "can't rename install-shilohsystem.org.bak install-shilohsystem.org: $!";
