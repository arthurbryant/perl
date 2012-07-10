#!/usr/bin/perl
#
# Author:zhangfeng  cst.feng@gmail.com  2012-07-09

use warnings;
use strict;

require "./pub_functions.pl";
require "./print.pl";

my @result = &random_num();

&print_num_array(\@result);
