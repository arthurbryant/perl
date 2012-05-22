#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-05-16

use warnings;
use strict;

while(<>)
{
    chomp;
    if(/\b\w*a\b/)
    {
        print "Match: |$`<$&>$'|\n";
    }
    else
    {
        print "No match: |$_|\n";
    }
}
