#!/usr/bin/perl
# find line that contains both 'fred' and 'wilma'.  
# Author:zhangfeng  cst.feng@gmail.com  2012-05-09

use warnings;
use strict;

while(<>)
{
    print if(/fred.*wilma|wilma.*fred/)
}
