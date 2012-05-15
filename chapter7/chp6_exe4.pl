#!/usr/bin/perl
# print line which contains uppercase word. 
# Author:zhangfeng  cst.feng@gmail.com  2012-05-09

use warnings;
use strict;

while(<>)
{
    print if(/[A-Z][a-z]+/)
}
