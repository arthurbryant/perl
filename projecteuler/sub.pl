#!/usr/bin/env perl

use strict;
use warnings;

sub max {
    my $max = shift;
    for(@_) {
        $max = $_ if $_ > $max;
        print "max is $max now\n"
    }
    return $max;
}

print max(12, 53, 121, 1, 123, 342, 14)
