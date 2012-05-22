#!/usr/bin/perl
# print line that contains two continuous no-space character. 
# Author:zhangfeng  cst.feng@gmail.com  2012-05-09

use warnings;
use strict;

while(<>)
{
    print if(/(\S)\g{1}/)
}
