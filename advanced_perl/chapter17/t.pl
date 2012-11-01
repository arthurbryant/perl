#!/usr/local/perl-5.14.1/bin/perl
# Author: feng.zhang   Email: feng.zhang@mixi.co.jp  2012-11-01
#

use strict;
use warnings;

use Test::More 'no_plan';

use Horse;

my $horse = Horse->named("horse");
isa_ok($horse, 'Horse');
isa_ok($horse, 'Animal');
can_ok($horse, $_) for qw(eat color);
is($horse->{Name}, 'horse', 'right');
