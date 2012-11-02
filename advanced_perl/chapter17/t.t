#!/usr/local/perl-5.14.1/bin/perl
# Author: feng.zhang   Email: feng.zhang@mixi.co.jp  2012-11-01
#

use strict;
use warnings;

use My::List::Util;
use Test::More 'no_plan';


my @list = (1, 2, 3, 4);
my $result = My::List::Util->sum(@list);
is($result, 10, "That:s right");

