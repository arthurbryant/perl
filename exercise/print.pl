#!/usr/bin/perl
# test print 
# Author: zhangfeng 2012-4-29

use strict; 
use warnings;

chomp(my $width = <stdin>);
$width = 20;
my $str = "hello";
printf "%${width}s\n", $str;
