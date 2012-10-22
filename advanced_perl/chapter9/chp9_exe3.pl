#!/usr/bin/perl
#
# Author: feng.zhang   Email: feng.zhang@mixi.co.jp  2012-10-19
#

use strict;
use warnings;

use Data::Dumper;

my @dicts;
while(<>) {
	chomp;
	push @dicts, $_;
}
my @sorted = (
	map $_->[0], 
	sort { $a->[1] cmp $b->[1]}
	map {
		my $string = $_;
		$string =~ tr /A-Z/a-z/;
		$string =~ tr /a-z//cd;
		[ $_, $string ];
		}
	@dicts
);

print Dumper(@dicts);
