#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-06-19

use warnings;
use strict;

foreach my $file (@ARGV)
{
    if(-e $file)
    {
        if(-d $file)
        {
            unlink glob "$file/* $file/.*" or warn "Failed on unlink $file/*";
            rmdir $file or warn "Failed on diretory $file: $!\n";
        }
        else
        {
            unlink $file or warn "Failed on regular $file: $!\n";
        }
    }
    else
    {
        die "$file doesn't exist!: $!";
    }
}
