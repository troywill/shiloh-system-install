#!/usr/bin/env perl

use warnings;
use strict;
my $regexp = '^#en_US.UTF-8 UTF-8';
my $replacement = 'en_US.UTF-8 UTF-8';
open(my $oldlocale, "<", "/etc/locale.gen")      # open for update
    or die "Can't open '/etc/locale.gen' for reading: $!";
open(my $newlocale, ">", "/etc/locale.gen.tmp")
    or die "Can't open '/tmp/locale.gen' for writing: $!";
while (<$oldlocale>) {
    s/$regexp/$replacement/;
    print $newlocale $_ or die "can't write $newlocale: $!";;
}

close($oldlocale)            or die "can't close $oldlocale: $!";
close($newlocale)            or die "can't close $newlocale: $!";
rename("/etc/locale.gen", "/etc/locale.gen.orig")   or die "can't rename /etc/locale.gen /etc/locale.gen.orig: $!";
rename("/etc/locale.gen.tmp", "/etc/locale.gen") or die "can't rename /etc/locale.gen.tmp /etc/locale.gen: $!";
