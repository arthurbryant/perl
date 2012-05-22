#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-05-17

use warnings;
use strict;

$#ARGV >= 0 or die("Usage: $0 filenames");
$^I = ".bak";
while(<>)
{
    print;
    if(/^#!/)
    {
        print "## Copyright (C) 2012 by zhangfeng\n";
    }
}
