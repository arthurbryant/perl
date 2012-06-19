#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-06-19

use warnings;
use strict;

my $filename = "tt.pl";
if(-r $filename)
{
    print "r+, ";
}
if(-w $filename)
{
    print "w+, ";
}
if(-x $filename)
{
    print "x+, ";
}
