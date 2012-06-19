#!/usr/bin/perl
# print default modules' list. 
# Author:zhangfeng  cst.feng@gmail.com  2012-06-18

use warnings;
use strict;

use Module::CoreList;

my %modules = %{$Module::CoreList::version{5.008}};
while(my ($key, $value) = each %modules)
{
    print $key, " => ", $value, "\n";
}
