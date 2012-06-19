#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-06-19

use warnings;
use strict;

foreach my $filename (@ARGV)
{
    if(open TMP_FILE, $filename)
    {
        while(my $line = <TMP_FILE>)
        {
            print $line;
        }
    }
}
