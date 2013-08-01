#!/usr/bin/perl
#
# Author: zhangfeng cst.feng@gmail.com 2012-06-11

use strict;
use warnings;

my %hash = qw/key value key2 value/;
for my $k (keys %hash) {
    print "$k $hash{$k}\n";
}
print ref(%hash);
