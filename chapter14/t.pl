#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-09

use warnings;
use strict;

require "../pub_functions/pub_functions.pl";

my @result = &random_num();
print "$_\t" foreach(@result);
