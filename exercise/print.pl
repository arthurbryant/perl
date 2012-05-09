#!/usr/bin/perl
# test print 
# Author: zhangfeng 2012-4-29

use strict;
use 5.010;

my @list = (2012, 1, 15);
printf("%d-%02d-%d\n", $list[0], $list[1], $list[2]);
