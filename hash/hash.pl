#!/usr/bin/perl
# 
# Author: zhangfeng cst.feng@gmail.com 2012-07-23

use strict; 
use warnings;

use Data::Dumper;

my %hash = ( "one" => 1 , "two" => 2 , "three" => 3 ) ;

warn Dumper %hash;
my ($abc) = ("a", 2, "b", 4);
warn Dumper $abc->{"1"};
