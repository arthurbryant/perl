#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-17

use warnings;
use strict;

my @input_numbers = (1, 2, 4, 8, 16, 32);

my @result = map {$_, $_ * 3} @input_numbers;
print "@result\n";

@result = map {split //, $_} @input_numbers;
print "@result\n";

@result = map {
	my @digits = split //, $_;
	if($digits[-1] == 4)
	{
		@digits
	}
	else
	{
		();
	}
} @input_numbers;
print "@result\n";

foreach my $op (qw(+ - * /))
{
	my $result = eval "2 $op 2";
	print "2 $op 2 = $result\n";
}
