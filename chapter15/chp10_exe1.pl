#!/usr/bin/perl
# guess the number between 1 and 100. 
# Author:zhangfeng  cst.feng@gmail.com  2012-07-10

use warnings;
use strict;

my $rand_num = int(1 + rand 100);
while(1)
{
    print "Please input your guess:\n";
	
    chomp(my $guess = <stdin>);
    if($guess =~ /\d+/)
    {
        $guess < $rand_num ? print "Too low\n" :
        $guess > $rand_num ? print "Two high\n" :
        last; 
    }
    elsif($guess =~ /quit|exit|^$/i)
    {
        last;
    }
    else
    {
        redo;
    }
}
