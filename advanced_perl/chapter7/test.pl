#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-11

use warnings;
use strict;

use Boss;

my $obj = Boss->create('arthur', 26);
my $res = $obj->set_salary(100);
print $Boss::x;
print $res, "\n";
