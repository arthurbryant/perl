#!/usr/bin/perl
# is int or not. 
# Author: zhangfeng 2012-4-29

use strict; 
use warnings;

sub isint
{
    my $val = shift;
    return ($val =~ m/^\d+$/);
}
while(1)
{
    chomp(my $test = <stdin>);
    if(isint($test))
    { 
        print $test, "\n";
    }
    else
    {
        print "not digital number!\n"; 
    }
}
