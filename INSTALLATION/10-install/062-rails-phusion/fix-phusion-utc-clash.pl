#!/usr/bin/env perl
use warnings;
use strict;
use File::Find;

my @fileList = ();

find(\&replace, '/stow/ruby-1.9.3_p194/usr/local/lib/ruby/gems/1.9.1/gems/passenger-3.0.14');

print @fileList;

sub replace {
    my $file = $File::Find::name;
    if ( -f $file ) {
	open (my $filehandle, "+<", $file) or die "Unable to open $file";
	while(<$filehandle>) {
	    if (/TIME_UTC(?!_)/ ) {
		print "changing occurance(s) of TIME_UTC in $file\n";
		system("perl -p -i -e 's/TIME_UTC(?!_)/TIME_UTC_/g' $file");
		last;
	    }
	}
	close $filehandle;
    }
}

__END__
# Run the following command to replace all occurrences of TIME_UTC with TIME_UTC_ in a directory

