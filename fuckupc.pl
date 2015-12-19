#!/usr/bin/env perl

use strict;
use warnings;
use Net::Ping;
use Data::Dumper;

my $ModemIP = '192.168.100.1';
my $RemoteIP = '8.8.8.8';
my $Sleep = 5*60;



my $local = `ping -c 1 192.168.1.23; echo $?`;
print $local;

while () {
    print "ahoj\n";
    sleep $Sleep;
}
