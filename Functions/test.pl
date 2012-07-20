#!/usr/bin/perl
#
# Author:zhangfeng  cst.feng@gmail.com  2012-07-09

use warnings;
use strict;

BEGIN
{
	unshift(@INC, '..');
}

use Functions::Number qw{random_num};
use Functions::Print qw(print_num_array);


my @result = random_num(20, 100);

print_num_array(\@result);
