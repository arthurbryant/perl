#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-05-16

use warnings;
use strict;

while(<>)
{
    chomp;
    if(/\b(\w*a)\b/)
    {
        print "\$1 contains '$1'\n";
    }
    else
    {
        print "No match: |$_|\n";
    }
}
