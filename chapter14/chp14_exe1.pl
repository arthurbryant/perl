#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-09

use warnings;
use strict;

require "../pub_functions/print.pl";

my $item;
my @array;
while($item = <stdin>)
{
	my @temp = split /\s+/, $item;
	foreach(@temp)
	{
		push @array, $_ if /\d+/;
	}
}
my @result = sort {$a <=> $b} @array;
&print_num_array(\@result);
