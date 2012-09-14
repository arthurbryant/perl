#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-17

use warnings;
use strict;

my @arr = (1..9);
my ($i, $j) = splice @arr, 0, 2;
print "i = $i, j = $j\n";
