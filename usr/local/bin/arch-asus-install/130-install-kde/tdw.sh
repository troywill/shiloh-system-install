#!/usr/bin/env perl
use warnings;
use strict;

my $EDITOR='emacs';

&run_command ('pacman --sync dbus');
&run_command ("${EDITOR} /etc/rc.conf");

sub run_command {
    my $command = shift;
    print "=> $command\n";
    system $command;
}
#!/usr/bin/env perl
use warnings;
use strict;

&run_command ('pacman --sync kdeedu-kstars');

sub run_command {
    my $command = shift;
    print "=> $command\n";
    system $command;
}
#!/usr/bin/env perl
use warnings;
use strict;

&run_command ( 'pacman --sync --refresh' );
&run_command ( 'pacman --sync kdebase-plasma');

sub run_command {
    my $command = shift;
    print "=> $command\n";
    system $command;
}
#!/usr/bin/env perl
use warnings;
use strict;

&run_command ( 'pacman --sync --refresh' );
&run_command ( 'pacman --sync kdebase-konsole');

sub run_command {
    my $command = shift;
    print "=> $command\n";
    system $command;
}
#!/usr/bin/env perl
use warnings;
use strict;

&run_command ('pacman --sync kdebase-workspace');

sub run_command {
    my $command = shift;
    print "=> $command\n";
    system $command;
}
#!/usr/bin/env perl
use warnings;
use strict;

&run_command ('pacman --sync kde');

sub run_command {
    my $command = shift;
    print "=> $command\n";
    system $command;
}
