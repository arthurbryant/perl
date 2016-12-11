#!/usr/bin/env perl

use strict;
use warnings;

my @array = ("arthur", 31, "male");

for(my $i = 0; $i < $#array; ++$i) {
    if($i % 2 == 1) {
        last;
    }
    print "item = $array[$i]"
}
