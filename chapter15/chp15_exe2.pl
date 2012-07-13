#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-10

use 5.010;
use warnings;
use strict;

chomp(my $input = <stdin>); 
die "Wrong input!" unless($input =~  /^\d+$/); 

given($input)
{
    when(!($_ % 3)) {print "Fizz "; continue;};    
    when(!($_ % 5)) {print "Bin "; continue;};    
    when(!($_ % 7)) {say "Sausage";};    
    default {exit 1;}
}
