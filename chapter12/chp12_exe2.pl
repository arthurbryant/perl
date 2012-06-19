#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-06-19

use warnings;
use strict;

my $oldest_filename;
my $oldest_days = 0;

foreach my $filename (@ARGV)
{
    if(-e $filename)
    {
        my $days = (-M _);
        if($days > $oldest_days)
        {
            $oldest_filename = $filename;
            $oldest_days = $days;
        }
    }
}
# if not input file names, do nothing.
if(defined($oldest_filename))
{
    print "$oldest_filename has survived for about ", int($oldest_days), " days.\n";
}
