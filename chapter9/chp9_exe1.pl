#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-05-17

use warnings;
use strict;

chomp(my $what = <>);
while(<>)
{
    chomp;
    if(/($what){3}/)
    {
        print "Match: $_\n";
    }
}
