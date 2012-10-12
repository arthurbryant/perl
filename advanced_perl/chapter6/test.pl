#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-17

use warnings;
use strict;

#use Data::Dumper;
use YAML;

while(<>);

my @gilligan_info =
(
	name => 'gilligan',
	hat => 'White',
	shirt => 'Red',
	position => 'First Mate',
);

#print Dumper(@gilligan_info);
print Dump(@gilligan_info);

my @input_numbers = (1, 2, 4, 8, 16, 32, 64);
my @indices = grep {
	my $number = $input_numbers[$_];
	my $sum;
	$sum += $_ for split //, $number; 
	$sum % 2;
} 0..$#input_numbers;
print Dump(@indices);
print "\n";
my @result = @input_numbers[@indices];
print Dump(@result);

