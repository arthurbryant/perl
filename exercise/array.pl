#!/usr/bin/perl

use strict;
use warnings;

# generate 100 intergers between 0 and 9999.
srand(scalar time());
my $range = 1000;
my @arr = ();
my $count = 100;
foreach (1..$count)
{
    push @arr, int(rand($range));
}

# sort 100 intergers.
@arr = sort { $a <=> $b } @arr;
foreach my $item (@arr)
{
    print $item, "\n";
}
