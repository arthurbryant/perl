#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-09

use warnings;
use strict;

sub sort_by_number
{
	if($a > $b) {1;}
	elsif($a < $b) {-1;}
	else {0;}
}
my $i = 0;
my @array;
while($i < 100)
{
	++$i;
	my $rand_num = int(rand 1000);
	#print $rand_num;
	push @array, $rand_num;
}
print "@array";
print "\n\n\n";
my @sort_result = sort sort_by_number @array;
print "@sort_result";
print "\n";
