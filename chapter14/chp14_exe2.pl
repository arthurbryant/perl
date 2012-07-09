#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-09

use warnings;
use strict;

my $i = 0;
my @array;
while($i < 100)
{
	++$i;
	my $rand_num = int(rand 1000);
	push @array, $rand_num;
}
print "@array";
print "\n\n\n";
#my @sort_result = sort {$a <=> $b} @array;
my @sort_result = sort {$b <=> $a} @array;
print "@sort_result";
print "\n";
