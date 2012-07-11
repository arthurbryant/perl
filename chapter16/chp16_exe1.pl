#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-11

use warnings;
use strict;

my $dir = "/home";
my $cmd = "ls -l";
chdir $dir or die "Change directory to $dir failed: $!";
system $cmd or die "Execute $cmd failed: $!";
