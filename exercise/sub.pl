#!/usr/bin/perl

use strict; 
use warnings;

print max(1, 4);

sub max
{
    ($a, $b) = @_;
    if($a > $b)
    {
        $a;
    }
    else
    {
        $b;
    }
}
my $max = 12;
print $max, max(12, 13);
