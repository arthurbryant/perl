#!/usr/bin/perl
# Use to create random integers. 
# Usage: ./random_num.pl numbers end_range 
# Author:zhangfeng  cst.feng@gmail.com  2012-07-09

use warnings;
use strict;

sub random_num
{
    if(@ARGV < 2)
    {
    	die "Usage: $0 numbers end_ranage";
    }
    my $numbers = shift @ARGV;
    my $end = shift @ARGV;
    my @array;
    while(--$numbers > 0)
    {
    	my $rand_num = int(rand $end);
		print $rand_num;
    	push @array, $rand_num;
    }
    print "@array";
    print "\n\n\n";
    my @sort_result = sort {$a <=> $b} @array;
    print "@sort_result";
    print "\n";

	return @array;
}

1;
