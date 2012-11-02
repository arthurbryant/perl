#!/usr/local/perl-5.14.1/bin/perl
# Author: feng.zhang   Email: feng.zhang@mixi.co.jp  2012-11-01
#

use strict;
use warnings;

use Test::More 'no_plan';
use My::List::Util qw(sum shuffle);

is(sum(1, 2, 3, 4), 10, "1..4=10");
is(sum(1, -1), 0, "1-1=0");
is(sum(), 0, "0+0=0");
is(sum(1, 'abc'), 1, "aaa+1=1");
is(sum('mn', 'abc'), undef, "aaa+mn=undef");

my @list = (1, 2, 3, 4, 5, 6, 7, 8);
my @sf_list = shuffle(@list);
my $diff_num = 0;
my $length = scalar @list;
for (my $i = 0; $i < $length; ++$i) {
    ++$diff_num unless($list[$i] eq $sf_list[$i]);
}
cmp_ok($diff_num, '>', 2, "At least two diff!");
