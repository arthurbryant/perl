#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-17

use warnings;
use strict;

my %gilligan_info =
(
	name => 'gilligan',
	hat => 'White',
	shirt => 'Red',
	position => 'First Mate',
);
my %skipper_info =
(
	name => 'skipper',
	hat => 'Black',
	shirt => 'Blue',
	position => 'Caption',
);

my @crew = {\%gilligan_info, \%skipper_info};
#my @result = @gilligan_info{qw(name position)};
my @result = @gilligan_info{name, position};
print "@result\n";
