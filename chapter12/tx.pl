#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-06-19

use warnings;
use strict;

my $filename = "chp12_exe1.pl";
my $time = -A $filename;
print "$time\n";
my @arr = stat($filename);
print "@arr\n";
