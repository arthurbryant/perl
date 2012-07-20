#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-09

use warnings;
use strict;

my %last_name = qw{ 
		fred flintstone Wilma Flintstone Barney Rubble
		betty rubble Bamm-Bamm Rubble PEBBLES FLINTSTONE
		};
sub by_name
{
	my %names;
	"\L$a" cmp "\L$b" or
	$names{"\L$a"} cmp $names{"\L$b"};
}
my @names = sort by_name keys %last_name;
foreach (@names)
{
	print "$_ $last_name{$_}\n"; 
}
