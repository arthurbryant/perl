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

