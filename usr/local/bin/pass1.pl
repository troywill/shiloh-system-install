#!/usr/bin/env perl
use warnings;
use strict;

my $INTERFACE = 'wlan0';
my $SCAN_COMMAND = "iwlist $INTERFACE scanning";
my @scan = `$SCAN_COMMAND`;
my ( %cell, %HoC, $mac );
foreach (@scan) {
    if ( m/^\s+Cell\s+\d+\s+-*\s*Address:\s*(([0-9a-fA-F]{2}[:-]{1}){5}([0-9a-fA-F]{2}))/ ) {
	$mac = $1;
	%cell = ( mac  => $mac );
    } elsif (	m/^\s*ESSID:*\"(.*?)\"/ ) {
	$HoC{$mac}{ESSID} = $1;
    } elsif (	m/^\s*Quality=(\d+\/\d+)\s*/ ) {
	$HoC{$mac}{Quality} = $1;
    };
}

&display_01;

sub display_01 {
    print "+---------- Available Wireless Networks -----------------------+\n";
    foreach my $mac ( keys %HoC ) {
	print "\ncell = $mac\n";
	for my $value ( keys %{ $HoC{$mac} } ) {
	    print "\t$value = $HoC{$mac}{$value} ";
	}
    }
    print "\n";
}
sub display_00 {
    print "+---------- Available Wireless Networks -----------------------+\n";
    foreach my $mac ( keys %HoC ) {
	print "\ncell = $mac\n";
	for my $value ( keys %{ $HoC{$mac} } ) {
	    print "\t$value = $HoC{$mac}{$value} ";
	}
    }
    print "\n";
}

exit;
__END__
Usage: iwlist [interface] scanning [essid NNN] [last]
wlan0     Scan completed :
          Cell 01 - Address: 00:22:3F:0E:B2:D3
                    Channel:2
                    Frequency:2.417 GHz (Channel 2)
                    Quality=23/70  Signal level=-87 dBm  
                    Encryption key:on
                    ESSID:"olivera_n"
                    Bit Rates:1 Mb/s; 2 Mb/s; 5.5 Mb/s; 6 Mb/s; 9 Mb/s
                              11 Mb/s; 12 Mb/s; 18 Mb/s
                    Bit Rates:24 Mb/s; 36 Mb/s; 48 Mb/s; 54 Mb/s
                    Mode:Master
                    Extra:tsf=000000110b89a180
                    Extra: Last beacon: 1070ms ago
                    IE: Unknown: 00096F6C69766572615F6E
                    IE: Unknown: 010882848B0C12961824
                    IE: Unknown: 030102
                    IE: Unknown: 0706555349010B1B
                    IE: Unknown: 200100
                    IE: Unknown: 2A0100
                    IE: Unknown: 32043048606C
                    IE: Unknown: DD180050F2020101020003A4000027A4000042435E0062322F00
                    IE: Unknown: DD1E00904C334C101BFFFF000000000000000000000000000000000000000000
                    IE: Unknown: 2D1A4C101BFFFF000000000000000000000000000000000000000000
                    IE: Unknown: DD1A00904C3402001B00000000000000000000000000000000000000
                    IE: Unknown: 3D1602001B00000000000000000000000000000000000000
                    IE: Unknown: DD0900037F01010000FF7F
                    IE: Unknown: DD0A00037F04010000000000
          Cell 02 - Address: 00:13:10:8D:40:1E
                    Channel:1
                    Frequency:2.412 GHz (Channel 1)
                    Quality=54/70  Signal level=-56 dBm  
                    Encryption key:on
                    ESSID:"JM"
                    Bit Rates:1 Mb/s; 2 Mb/s; 5.5 Mb/s; 11 Mb/s; 18 Mb/s
                              24 Mb/s; 36 Mb/s; 54 Mb/s
                    Bit Rates:6 Mb/s; 9 Mb/s; 12 Mb/s; 48 Mb/s
                    Mode:Master
                    Extra:tsf=00000001716f0186
                    Extra: Last beacon: 503ms ago
                    IE: Unknown: 00024A4D
                    IE: Unknown: 010882840B162430486C
                    IE: Unknown: 030101
                    IE: Unknown: 2A0104
                    IE: Unknown: 2F0104
                    IE: Unknown: 32040C121860
                    IE: Unknown: DD090010180203F4000000
                    IE: Unknown: DD180050F2020101800003A4000027A4000042435E0062322F00
          Cell 03 - Address: 00:02:6F:52:2A:75
                    Channel:9
                    Frequency:2.452 GHz (Channel 9)
                    Quality=40/70  Signal level=-70 dBm  
                    Encryption key:on
                    ESSID:"ROSE"
                    Bit Rates:1 Mb/s; 2 Mb/s; 5.5 Mb/s; 11 Mb/s
                    Bit Rates:6 Mb/s; 9 Mb/s; 12 Mb/s; 18 Mb/s; 24 Mb/s
                              36 Mb/s; 48 Mb/s; 54 Mb/s
                    Mode:Master
                    Extra:tsf=00000039d0d8cc4d
                    Extra: Last beacon: 866ms ago
                    IE: Unknown: 0004524F5345
                    IE: Unknown: 010482848B96
                    IE: Unknown: 030109
                    IE: Unknown: 2A0100
                    IE: Unknown: 32080C1218243048606C
                    IE: IEEE 802.11i/WPA2 Version 1
                        Group Cipher : CCMP
                        Pairwise Ciphers (1) : CCMP
                        Authentication Suites (1) : PSK
                    IE: WPA Version 1
                        Group Cipher : CCMP
                        Pairwise Ciphers (1) : CCMP
                        Authentication Suites (1) : PSK
                    IE: Unknown: DD180050F202010100000364000027A4000041435E0061322F00
                    IE: Unknown: DD1E00904C334E101EFFFF000000000000000000000000000000000000000000
                    IE: Unknown: DD1A00904C340907050000000F000000000000000000000000000000
                    IE: Unknown: 2D1A6E101EFFFF000000000000000000000000000004000000000000
                    IE: Unknown: 3D160907110000000F000000000000000000000000000000
                    IE: Unknown: DD870050F204104A0001101044000102103B00010310470010709B31E078B63CD3BB783C3DF88E6CCA1021000E526F736577696C6C2C20496E632E1023000D4D656469612047617465776179102400024131104200046E6F6E651054000800060050F204000110110019576972656C6573732044726166742031316E20526F75746572100800020004
          Cell 04 - Address: 00:23:69:B6:FC:F5
                    Channel:6
                    Frequency:2.437 GHz (Channel 6)
                    Quality=51/70  Signal level=-59 dBm  
                    Encryption key:off
                    ESSID:"linksys"
                    Bit Rates:1 Mb/s; 2 Mb/s; 5.5 Mb/s; 11 Mb/s; 18 Mb/s
                              24 Mb/s; 36 Mb/s; 54 Mb/s
                    Bit Rates:6 Mb/s; 9 Mb/s; 12 Mb/s; 48 Mb/s
                    Mode:Master
                    Extra:tsf=0000002494542c34
                    Extra: Last beacon: 1003ms ago
                    IE: Unknown: 00076C696E6B737973
                    IE: Unknown: 010882848B962430486C
                    IE: Unknown: 030106
                    IE: Unknown: 2A0100
                    IE: Unknown: 2F0100
                    IE: Unknown: 32040C121860
                    IE: Unknown: 2D1A7C181BFFFF000000000000000000000000000000000000000000
                    IE: Unknown: 3D1606081100000000000000000000000000000000000000
                    IE: Unknown: DD6F0050F204104A00011010440001011041000100103B0001031047001088ED7255D44F234DBF0FC4A1B3F0E543102100074C696E6B737973102300075752543136304E102400063132333435361042000234321054000800060050F2040001101100075752543136304E100800020084
                    IE: Unknown: DD090010180200F4050000
                    IE: Unknown: DD180050F2020101000003A4000027A4000042435E0062322F00
                    IE: Unknown: DD1E00904C337C181BFFFF000000000000000000000000000000000000000000
                    IE: Unknown: DD1A00904C3406081100000000000000000000000000000000000000
          Cell 05 - Address: E0:91:F5:72:A4:02
                    Channel:11
                    Frequency:2.462 GHz (Channel 11)
                    Quality=17/70  Signal level=-93 dBm  
                    Encryption key:on
                    ESSID:"happykinky"
                    Bit Rates:1 Mb/s; 2 Mb/s; 5.5 Mb/s; 11 Mb/s; 18 Mb/s
                              24 Mb/s; 36 Mb/s; 54 Mb/s
                    Bit Rates:6 Mb/s; 9 Mb/s; 12 Mb/s; 48 Mb/s
                    Mode:Master
                    Extra:tsf=0000009983ce6682
                    Extra: Last beacon: 750ms ago
                    IE: Unknown: 000A68617070796B696E6B79
                    IE: Unknown: 010882840B162430486C
                    IE: Unknown: 03010B
                    IE: Unknown: 2A0100
                    IE: Unknown: 2F0100
                    IE: IEEE 802.11i/WPA2 Version 1
                        Group Cipher : CCMP
                        Pairwise Ciphers (1) : CCMP
                        Authentication Suites (1) : PSK
                    IE: Unknown: 32040C121860
                    IE: Unknown: 2D1A6C181BFF00000000000000000000000000000000000000000000
                    IE: Unknown: 3D160B081500000000000000000000000000000000000000
                    IE: Unknown: 4A0E14000A002C01C800140005001900
                    IE: Unknown: 7F0101
                    IE: Unknown: DD7F0050F204104A00011010440001021041000100103B0001031047001081970A930A0FF14C9839A8340F2BEA901021000D4E4554474541522C20496E632E10230009574E5231303030763310240009574E523130303076331042000538333235381054000800060050F204000110110009574E52313030307633100800020084
                    IE: Unknown: DD090010180201F0050000
                    IE: Unknown: DD180050F2020101800003A4000027A4000042435E0062322F00
                    IE: Unknown: DD1E00904C336C181BFF00000000000000000000000000000000000000000000
                    IE: Unknown: DD1A00904C340B081500000000000000000000000000000000000000
          Cell 06 - Address: E0:91:F5:D5:F6:04
                    Channel:6
                    Frequency:2.437 GHz (Channel 6)
                    Quality=20/70  Signal level=-90 dBm  
                    Encryption key:on
                    ESSID:"Massey 1"
                    Bit Rates:1 Mb/s; 2 Mb/s; 5.5 Mb/s; 11 Mb/s; 18 Mb/s
                              24 Mb/s; 36 Mb/s; 54 Mb/s
                    Bit Rates:6 Mb/s; 9 Mb/s; 12 Mb/s; 48 Mb/s
                    Mode:Master
                    Extra:tsf=0000000d1d869c31
                    Extra: Last beacon: 1363ms ago
                    IE: Unknown: 00084D61737365792031
                    IE: Unknown: 010882840B162430486C
                    IE: Unknown: 030106
                    IE: Unknown: 2A0100
                    IE: Unknown: 2F0100
                    IE: Unknown: 32040C121860
                    IE: Unknown: 2D1A6C181BFF00000000000000000000000000000000000000000000
                    IE: Unknown: 3D1606081100000000000000000000000000000000000000
                    IE: Unknown: 4A0E14000A002C01C800140005001900
                    IE: Unknown: 7F0101
                    IE: Unknown: DD050050F20500
                    IE: Unknown: DD7F0050F204104A00011010440001021041000100103B000103104700104D73AB7A90B5E9753BB69556E5D8B3E41021000D4E4554474541522C20496E632E10230009574E5231303030763310240009574E523130303076331042000538333235381054000800060050F204000110110009574E52313030307633100800020084
                    IE: Unknown: DD090010180200F0050000
                    IE: Unknown: DD180050F2020101800003A4000027A4000042435E0062322F00
                    IE: Unknown: DD1E00904C336C181BFF00000000000000000000000000000000000000000000
                    IE: Unknown: DD1A00904C3406081100000000000000000000000000000000000000

