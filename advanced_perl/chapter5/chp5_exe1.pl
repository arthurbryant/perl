#!/usr/bin/perl
#  
# Author:zhangfeng  feng.zhang@mixi.co.jp  2012-10-11

use warnings;
use strict;

my $passenger_1 = {
	name			=> 	'Ginger',
	age				=> 	20,
	occupation=> 	'Movie Star',
	real_age	=> 	35,
	hat				=> 	undef,
};
my $passenger_2 = {
	name			=> 	'Mary Ann',
	age				=> 	19,
	hat				=> 	'honnet',
	favourite_food 	=>	'corn',
};

my @passengers = ($passenger_1, $passenger_2 );

# test code
foreach my $passenger (@passengers)
{
	while (my ($k, $v) = each %$passenger)
	{
		print $k, " => ", $v, "\n";
	}
}
