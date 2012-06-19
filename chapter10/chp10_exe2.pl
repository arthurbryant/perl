#!/usr/bin/perl
# guess the number between 1 and 100 use $debuy to open debug switch. 
# Usage: ./chp10_exe2.pl [-d] 
# Author:zhangfeng  cst.feng@gmail.com  2012-06-11

use warnings;
use strict;

# setup debug switch.
my $debug;
$debug = defined($ARGV[0]) ? $ARGV[0] eq '-d' : 0;

# number guess
my $rand_num = int(1 + rand 100);
print "guessed number is $rand_num.\n" if $debug;
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
