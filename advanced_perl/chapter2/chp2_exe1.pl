#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-17

use warnings;
use strict;

print "Usage: $0 filenames\n" if @ARGV < 1;

my @small_files= grep { -s $_ < 1000} @ARGV;  
# undo: add file size to output.
my @result = map {" " x 4 . $_ . "\n"} @small_files;
print @result;
