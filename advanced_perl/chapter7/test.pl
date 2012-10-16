#!/usr/bin/perl
#  
# Author:zhangfeng  feng.zhang@mixi.co.jp  2012-10-11

use warnings;
use strict;

use File::Find;

find(
	sub {
		print "$File::Find::name found\n";
	},
	qw(.)
);

sub create_find_callback_counts
{
	my $count = 0;
	return sub {print ++$count, ": $File::Find::name\n"};
}
my $callback1 = create_find_callback_counts();
my $callback2 = create_find_callback_counts();
print "my tmp:\n";
find($callback1, '/tmp/');
print "my run:\n";
find($callback2, '/run/');
