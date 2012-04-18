#!/usr/bin/perl

use 5.010;
use strict;

sub average
{
	my $sum;
	foreach (@_)
	{
		$sum += $_;
	}
	return $sum/@_;
}
sub above_average
{
	my ($average, @array);
	$average = average(@_);
	foreach (@_)
	{
		if($_ > $average)
		{
			push @array, $_;
		}
	}
	return @array;
}
my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "Should be 6 7 8 9 10\n";
my @barney = above_average(100, 1..10);
print "\@barney is @barney \n";
print "Should be 100\n";
