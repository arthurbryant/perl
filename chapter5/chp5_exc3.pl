#!/usr/bin/perl
# format output, let user choose width and automatically ajust the benchmark.
# Author: zhangfeng 2012-4-29

use strict; 
use warnings;
# define the default terminal window's width.
use constant WIDTH => 80;

sub isint
{
    my $val = shift;
    return ($val =~ m/^\d+$/);
}

sub format_output
{
    print "Please input the width.\n";
    # stop when user input a correct width.
    my $width;
    while(1)
    {
        chomp($width = <stdin>);
        if(&isint($width)) 
        {
            last;
        }
        else
        {
            print "Please input the correct width!\n";
        }
    }
    # adjust user input width;
    $width = int($width) % WIDTH;
    # adjust bechmark.
    foreach (0..$width/10)
    {
        print "1234567890";
    }
    print "\n";
    # print the formated output.
    my $line;
    while(defined($line = <stdin>))
    {
        chomp $line;
        printf "%${width}s\n", $line;
    }
    return 1;
}

&format_output;
