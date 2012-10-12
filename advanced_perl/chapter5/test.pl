#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-17

use warnings;
use strict;

my $ref;

{
my @gilligan_info =
(
	name => 'gilligan',
	hat => 'White',
	shirt => 'Red',
	position => 'First Mate',
);
$ref = \@gilligan_info;
}

print $ref->[2], "\n";
