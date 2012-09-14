#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-17

use warnings;
use strict;

use Employee;

my $obj = Employee->create("arthur", 27);
$obj->set_salary(200);
my $test = $obj->get_salary();
print $test, "\n";
