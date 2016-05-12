#!/usr/bin/perl
## Copyright (C) 2012 by zhangfeng
#  
# Author:zhangfeng 2012-05-17

use warnings;
use strict;

$#ARGV >= 0 or die("Usage: $0 filenames");
$^I = '.out';
while(<>)
{
    chomp;
    s/Fred/\n/gi;
    s/Wilima/Fred/gi;
    s/\n/Wilima/g;
    print "$_\n";
}
