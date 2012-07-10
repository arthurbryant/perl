#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-09

use warnings;
use strict;

my $str = "Thanks for everything you have done for me.";
my $target = "do";
my $where = index($str, $target);
substr($str, $where, 4) = "fighted";
print $where, "\n";
print $str, "\n";
