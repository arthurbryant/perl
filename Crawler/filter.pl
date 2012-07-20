#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-06-06

use warnings;
use strict;

while(<>)
{
    chomp;
    if(s/^(\w+)(\s+)(.*)/$1 => "$3",/) 
    {
        print "$_\n";
    }
    else
    {
        print "$_\n";
    }
}
