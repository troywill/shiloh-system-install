sub check_non_root {
    die "Please run this program as non-root user.\n" if ( $> == 0 );
}

sub check_root {
    die "You cannot perform this operation unless you are root.\n" unless ( $> == 0 );
}

sub logfile_handle {
    my $log_file = '/var/log/shilohsystem.log';
    open( my $fh, '>>', $log_file ) or die "Unable to open $log_file for writing: $!";
    return $fh;
}

sub log_date {
    chomp( my $date = `date --iso-8601` );
    return "[" . $date . "]";
}

1;
