#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-06-19

use warnings;
use strict;

sub test_file
{
    my $filename = $_[0];
    print $filename, ' is ';
    if(-e $filename)
    {   
        if( -r _ )
        {
            print "readable, ";
        }
        else
        {
            print "not readable, ";
        }
        if( -w _ )
        {
            print "writable, ";
        }
        else
        {
            print "not writable, ";
        }
        if( -x _ )
        {
            print "executable.\n";
        }
        else
        {
            print "not executable.\n";
        }
    }
    else
    {
        print "not exist!\n";
    }
}

foreach my $filename (@ARGV)
{
    &test_file($filename);
}
