#!/usr/bin/perl
# print array and hash functions
# Author:zhangfeng  cst.feng@gmail.com  2012-07-09

use warnings;
use strict;

sub print_num_array
{
	my $i = 1;
	my $num_of_line = 10;
	my ($temp) = @_;
	foreach (@$temp)
	{
		printf("%-6d ", $_);
		print "\n" if($i++ % 10 == 0);
	}
	print "\n";
}

sub print_str_array
{
	my ($strs) = @_;
	foreach (@$strs)
	{
		printf("%s\n", $_);
	}
	print "\n";
}
sub print_hash
{
	my ($temp) = @_;
	while((my $k, my $v) = each %$temp)
	{
		print("$k => $v\n");
	}
	print "\n";
}

1;
