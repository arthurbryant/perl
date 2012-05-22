#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-05-16

use warnings;
use strict;

while(<>)
{
    chomp;
    if(/[\t\r\f ]+$/)
    {
        print "Match: |$`";
        my $len = length($&);
        print "^" x length($&), "|\n";
    }
    else
    {
        print "No match: |$_|\n";
    }
}
