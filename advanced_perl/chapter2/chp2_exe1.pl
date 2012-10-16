#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-10-09

use warnings;
use strict;

print "Usage: $0 filenames\n" if @ARGV < 1;

my @small_files= grep { -s $_ < 1000} @ARGV;  
# print filename and size
my @result = map {" " x 4 . $_ . "\t" . (-s $_) . "\n"} @small_files;
print @result;
