#!/usr/bin/perl

use strict; 
use warnings;

my @peak = (6403941, 2100063, 176265);
my $rate = 3;
for my $p (@peak) {
    $p = ($p / (24*60*60)) * $rate;
    print "$p \n";
}
