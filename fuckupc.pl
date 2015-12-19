#!/usr/bin/env perl

use strict;
use warnings;
use Net::Ping::External qw(ping);

my $ModemIP = '192.168.100.1';
my $RemoteIP = '8.8.8.8';
my $Sleep = 5*60;
my $File = 'upc.csv';
while () {
    my $ModemStatus  = ping(host => $ModemIP);
    my $RemoteStatus = ping(host => $RemoteIP);
    my $CurrentTime  = localtime;

    open FH,'>>', $File;
    print FH "\"$RemoteStatus\", \"$ModemStatus\", \"$CurrentTime\"\n";
    close FH;
    sleep $Sleep;
}
