#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-05-16

use warnings;
use strict;

while(<>)
{
    chomp;
    if(/\b(?<end_with_a>\w*a)\b (?<addition>.{0,5})/xs)
    {
        print "$+{end_with_a} $+{addition}\n";
    }
    else
    {
        print "No match: |$_|\n";
    }
}
