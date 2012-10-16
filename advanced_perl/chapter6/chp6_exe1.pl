#!/usr/bin/perl
#  
# Author:zhangfeng  feng.zhang@mixi.co.jp  2012-10-15

use warnings;
use strict;

use Storable;

my %total_bytes;

my $sum_bytes = "sum_bytes";
my $old_log = "old_log.txt"; 
my $new_log = "log.txt";
if(-e $new_log)
{
	my $log = retrieve $new_log;
	%total_bytes = %$log;
}

while(<>)
{
	next if(/^#.*/);
	my ($source, $destination, $bytes) = split;
	$total_bytes{$source}{$destination} += $bytes;
	$total_bytes{$source}{$sum_bytes} += $bytes;
}

store \%total_bytes, $new_log;

&print_log($old_log);
print "------------\n";
&print_log($new_log);

# sort by source and destination.
sub print_log
{
	my $sum_bytes = "sum_bytes";
	my $data = shift;
	my %total_bytes;
	if(-e $data)
	{
		my $log = retrieve $data;
		%total_bytes = %$log;
	}
  	foreach my $src (sort { $total_bytes{$a}{$sum_bytes} <=>                           $total_bytes{$b}{$sum_bytes} } keys %total_bytes)
  	{
    	print $src, " => ", $total_bytes{$src}{$sum_bytes}, "\n";
    	foreach my $des (sort { $total_bytes{$src}{$a} <=> $total_bytes{$src}{$b}}    keys %{$total_bytes{$src}})
    	{
     	print " " x 4, $des, " => ", $total_bytes{$src}{$des}, "\n";
    	}
	}
}
