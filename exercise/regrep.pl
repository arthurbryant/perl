#!/usr/bin/perl
# 
# Author: zhangfeng cst.feng@gmail.com 2012-05-09 

use strict; 
use warnings;

$_ = "arthur's birthday!";
if(/art/)
{
    print "match\n";
}
print if(/\barthur\b/);
print "\n";
