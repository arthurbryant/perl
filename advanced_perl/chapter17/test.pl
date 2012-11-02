#!/usr/local/perl-5.14.1/bin/perl
# Author: feng.zhang   Email: feng.zhang@mixi.co.jp  2012-11-01
#

use strict;
use warnings;
use My::List::Util;

=jpod
use Test::More tests => 9;

ok(1, '1 is true');
is(2+2, 4, 'right');
is(2*3, 5, 'output is 5');
isnt(2**3, 6, "is not 6");
like('hello kitty', qr{tty\z}, 'found tty');

is(sqrt(0), 0, "is 0");
is(sqrt(100), 10, "is 10");
is(sqrt(0.25), 0.5, "is 0.5");
my $pro = sqrt(7)*sqrt(7);
ok($pro >= 6.999 && $pro <= 7.001);
=cut

my @array = (1, 2, 3, 4);
my $result = My::List::Util->sum(@array);
print $result;
