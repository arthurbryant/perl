#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-17

use warnings;
use strict;

use Data::Dumper;

my %total_bytes;

my $sum_bytes = "sum_bytes";

while(<>)
{
	next if(/^#.*/);
	my ($source, $destination, $bytes) = split;
	$total_bytes{$source}{$destination} += $bytes;
	$total_bytes{$source}{$sum_bytes} += $bytes;
}

# sort by source and destination.
my $src;
foreach $src (sort { $total_bytes{$a}{$sum_bytes} <=> $total_bytes{$b}{$sum_bytes} } keys %total_bytes)
{
	print $src, " => ", $total_bytes{$src}{$sum_bytes}, "\n";
	foreach my $des (sort { $total_bytes{$src}{$a} <=> $total_bytes{$src}{$b}} keys %{$total_bytes{$src}})
	{
		print " " x 4, $des, " => ", $total_bytes{$src}{$des}, "\n";
	}
}
