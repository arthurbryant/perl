#!/usr/bin/perl
#
# Author: feng.zhang   Email: feng.zhang@mixi.co.jp  2012-10-19
#

use strict;
use warnings;

use Data::Dumper;

my $string;
my @result;
while($string = <>) {
	$string =~ tr /A-Z/a-z/;
	$string =~ tr /a-z//cd;
	push @result, $string;
}

my @r1 = map { $_, $_ . $_ } @result;
my @r2 = map [ $_, $_ . $_ ], @result; 
print Dumper(@r1);
print Dumper(@r2);

