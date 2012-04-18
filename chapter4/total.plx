#!/usr/bin/perl

use 5.010;
use strict;

# Problem one
sub total
{
	my $sum;
	foreach (@_)
	{
		$sum += $_;
	}
	return $sum;
}

my @fred = qw{ 1 3 5 7 9 };
my $fred_total = total(@fred);
print "The total of \@fred is $fred_total.\n";
print "Enter some numbers on seperate lines: ";
my $user_total = total(<stdin>);
print "The total of those numbers is $user_total.\n";

# Problem 2
print "Sum of 1 to 1000 is: ", total(1..1000), "\n";
