#!/usr/bin/perl

use strict; 
use warnings;

my @str1 = qw{'a', 'b', 'c'};
my @str2 = qw{'aa', 'bb', 'cc'};
foreach (@str1)
{
    print $_, "\n";
    foreach (@str2)
    {
        print $_[-1], "\n";
    }
}
