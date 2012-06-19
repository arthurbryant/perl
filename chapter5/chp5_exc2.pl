#!/usr/bin/perl
# format output 
# Author: zhangfeng 2012-4-29

use strict; 
use warnings;

sub format_output
{
    my $line;
    print "123456789012345678901234567890123456789012345678901234567890\n";
    while(defined($line = <stdin>))
    {
        chomp $line;
        printf "%20s\n", $line;
    }
    return 1;
}

&format_output;
