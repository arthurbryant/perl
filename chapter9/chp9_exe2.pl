#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-05-17

use warnings;
use strict;

$#ARGV >= 0 or die("Usage: $0 filenames");
$^I = '.out';
while(<>)
{
    s/fred/Larry/gi;
    print;
}
