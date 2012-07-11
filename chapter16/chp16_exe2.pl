#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-11

use warnings;
use strict;

require "../pub_functions/print.pl";

my $dir = "/temp";
my $cmd = "ls -l >ls.out 2> ls.err";
chdir $dir or die "Change directory to $dir failed: $!";
my @result = `$cmd`;
&print_str_array(\@result);
