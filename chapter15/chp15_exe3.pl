#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-10

use 5.010;
use warnings;
use strict;

my @files = glob "*";
foreach(@files)
{
    print "$_ can be "; 
    when(! -e) {die "$_ does not exist: $!";};
    when(-r _) {print "read,"; continue;}
    when(-w _) {print "write,"; continue;}
    when(-x _) {print "execute,"; continue;}
    default {print "\n"};
}
