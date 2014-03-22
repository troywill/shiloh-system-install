#!/usr/bin/env perl

use warnings;
use strict;

use Cwd 'abs_path';
use IO::Uncompress::Unzip qw(unzip $UnzipError) ;
my $adt_zip_bundle = shift or die;
my $adt_zip_bundle_realpath = abs_path($adt_zip_bundle);
my $home = $ENV{'HOME'} or die;
my $target_dir = "${home}/Development";

add_android_bundle_to_path();
print "Shall I unpack the Android Development Kit zip file to $target_dir? ";
my $answer = <STDIN>;

unless ( -e $target_dir ) {
    mkdir $target_dir or die;
}

chdir $target_dir or die;
system("unzip $adt_zip_bundle_realpath");

sub add_android_bundle_to_path {
    print <<'END';
ANDROID_BASE="${HOME}/Development/adt-bundle-linux-x86-20131030"
ADK_PATH="$ANDROID_BASE/sdk/platform-tools"
ADT_TOOLS_PATH="$ANDROID_BASE/sdk/tools"
ECLIPSE_PATH="$ANDROID_BASE/eclipse"

PATH=$PATH:$ADK_PATH:$ADT_TOOLS_PATH:$ECLIPSE_PATH
END
    system("emacs ~/.bashrc");
}
