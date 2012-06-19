#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-06-19

use warnings;
use strict;

foreach (@ARGV)
{
    print "$_ is mine and both readable and writable.\n" if(-w -r -o $_);
}
