#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-17

use warnings;
use strict;

sub main 
{
    my $text = '(zdd)(autumn)(123)(456)';
    my @matches = ($text =~ /\((.*?)\)/g) ;
    foreach my $match (@matches) 
	{
        print $match, "\n";
    }
}

&main;
