#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-10

use 5.010;
use warnings;
use strict;

my $rand_num = int(1 + rand 100);
while(1)
{
    say "Please input your guess:"; 	
    chomp(my $guess = <stdin>);
    given($guess)
    {
	when(/quit|exit|^$/i) {exit 1;}
	when(! /^\d+$/) {redo;}
	when($_ < $rand_num) {say "Too low"; break}
	when($_ > $rand_num) {say "Two high"; break}
	default {say "Right guess!"; last;}
    }
}
