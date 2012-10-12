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

print Dumper(%total_bytes);

# sort by source and destination.
foreach my $source (sort { $total_bytes{$a}{$sum_bytes} <=> $total_bytes{$b}{$sum_bytes} } keys %total_bytes)
{
	print $source;
	foreach my $des (sort { $total_bytes{$source}{$a} <=> $total_bytes{$source}{$b}} keys %total_bytes{$source})
	{
		print $total_bytes{$source}{$des}, "\n";
	}
	#print Dumper($source);
	print $total_bytes{$source}{$sum_bytes}, "\n";
}
