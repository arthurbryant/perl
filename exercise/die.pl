#!/usr/bin/perl
# test die 
# Author: zhangfeng 2012-4-29
# 

use strict; 
use warnings;

if (1)
{
    die("die\n");
    print "die or not\n";
    return 1;
}
else
{
    print; 
}
