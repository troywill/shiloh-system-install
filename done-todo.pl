#!/usr/bin/env perl
use warnings;
use strict;

my $infile = $ARGV[0] || die "Please supply a file to modify";
my $backup_file = $infile . '.bak';

do_replacement( $infile, $backup_file, '\* DONE', '* TODO' );
do_replacement( $infile, $backup_file, '\[X\]', '[ ]' );
do_replacement( $infile, $backup_file, '\[\d+\/(\d+)]', '[0\/$1]' );

sub do_replacement {
    my ( $infile, $backup_file, $regexp, $replacement ) = @_;

    open(my $oldorg, "<", $infile)      # open for update
    or die "Can't open $infile for reading: $!";

    open(my $neworg, ">", $backup_file)
    or die "Can't open 'install-shilohsystem.org.bak' for writing: $!";

    while (<$oldorg>) {
	if ( ($regexp eq '\[\d+\/(\d+)]') && ( $replacement eq '[0\/$1]')) {
	    s/$regexp/[0\/$1]/;
	} else {
	    s/$regexp/$replacement/;
	}
	print $neworg $_ or die "can't write $neworg: $!";
    }

    close($oldorg)            or die "can't close $oldorg: $!";
    close($neworg)            or die "can't close $neworg: $!";
    rename($backup_file, $infile)   or die "can't rename install-shilohsystem.org.bak $infile: $!";

}


exit;
__END__

######################################################################
$regexp = ;
$replacement = '[ ]';
open($oldorg, "<", $infile)      # open for update
    or die "Can't open $infile for reading: $!";
open($neworg, ">", $backup_file)
    or die "Can't open 'install-shilohsystem.org.bak' for writing: $!";
while (<$oldorg>) {
    s/$regexp/$replacement/;
    print $neworg $_ or die "can't write $neworg: $!";
}
close($oldorg)            or die "can't close $oldorg: $!";
close($neworg)            or die "can't close $neworg: $!";
rename($backup_file, $infile)   or die "can't rename install-shilohsystem.org.bak $infile: $!";

######################################################################
$regexp = '\[\d+\/(\d+)]';
open($oldorg, "<", $infile)      # open for update
    or die "Can't open $infile for reading: $!";
open($neworg, ">", $backup_file)
    or die "Can't open 'install-shilohsystem.org.bak' for writing: $!";
while (<$oldorg>) {
    $replacement = '[0\/$1]';
#    s/$regexp/[0\/$1]/;
    s/$regexp/$replacement/;
    print $neworg $_ or die "can't write $neworg: $!";
}
close($oldorg)            or die "can't close $oldorg: $!";
close($neworg)            or die "can't close $neworg: $!";
rename($backup_file, $infile)   or die "can't rename install-shilohsystem.org.bak $infile: $!";

