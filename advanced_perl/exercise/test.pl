#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-11

use warnings;
use strict;

use Test::Simple tests => 1;

ok(1+1 == 2, "very good");
ng(1+1 == 3);
