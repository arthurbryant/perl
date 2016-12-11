#!/usr/bin/env perl

use strict;
use warnings;

my $sum, my $i = 1;
while ($i++ < 1000) {
    if ($i % 3 == 0 || $i % 5 == 0) {
        print "i = $i\n";
        $sum += $i;
    }
}

print "sum = $sum";
