#!/usr/bin/perl
#
# Author: feng.zhang   Email: feng.zhang@mixi.co.jp  2012-10-19
#

use strict;
use warnings;

use Data::Dumper;
use Benchmark;

my $count = 5;
timethese($count, {
	'sort' => sub {
		my @sorted = 
			map $_->[0],
			sort { $a->[1] <=> $b->[1] }
			map [ $_, (-s $_) ],
			glob('/bin/*');
			#print Dumper(@sorted);
		}
	});

