#!/usr/bin/env perl

use strict;
use warnings;

my $sum = 2;
my $max = 0;
for(my $i = 1, my $j = 2; $max < 4000000; $i = $j, $j = $max)
{
    $max = $i + $j;
    if ($max % 2 == 0) {
        $sum += $max
    }
}
print "sum = $sum\n";
