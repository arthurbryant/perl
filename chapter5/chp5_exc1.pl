#!/usr/bin/perl
# tac program
# Author: zhangfeng 2012-4.29

use 5.010;

use strict; 
use warnings;

sub tac
{
    # reverse command parameters list
    @ARGV = reverse @ARGV;
    foreach my $f (@ARGV)
    {
        my $result = open TMP_FILE, $f;
        if(!$result)
        {
            die "Open file $f\n error!";
        }
        else
        {
            my @lines;
            foreach my $line (<TMP_FILE>)
            {
                push @lines, $line;
            }
            @lines = reverse @lines;
            foreach (@lines)
            {
                print; 
            }
        }
        close TMP_FILE;
    }
    return 1;
}

&tac;
