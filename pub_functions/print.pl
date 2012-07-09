#!/usr/bin/perl
# print array and hash functions
# Author:zhangfeng  cst.feng@gmail.com  2012-07-09

use warnings;
use strict;

sub print_array
{
	my $i = 1;
	my $num_of_line = 10;
	foreach (@_)
	{
		printf("%-6d ", $_);
		print "\n" if($i++ % 10 == 0);
	}
	print "\n";
}

sub print_hash
{
	while((my $k, my $v) = each %@_)
	{
		print("$k => $v\n");
	}
	print "\n";
}

1;
