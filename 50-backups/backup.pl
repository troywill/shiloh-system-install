#!/usr/bin/env perl
use warnings;
use strict;

my $TARGET = '/mnt/root.thai1/ACER.JAN21.2013/';

my @dirs = qw(boot etc home opt root srv stow var);

foreach my $dir ( @dirs ) {
    my $shell_command = "rsync -av --progress --delete $dir $TARGET";
    print "$shell_command\n";
    system($shell_command);
}

# rsync -av * /mnt/root.thai1/ACER.JAN21.2013/

