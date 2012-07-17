#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-11

use warnings;
use strict;

require "../pub_functions/print.pl";
require "../pub_functions/pub_functions.pl";

my @odds = grep {$_ % 2} 1..10;
&print_num_array(\@odds);

my @array = &random_num(20, 10);
print map {sprintf("%d\n", $_**2)} @array;
