#!/usr/bin/perl
# 
# Author: zhangfeng cst.feng@gmail.com 2012-05-15

use strict; 
use warnings;

my ($arr) = @ARGV;
print "\$arr = $arr\n";
print "$#ARGV\n";
die "Need at least one parameter" if (@ARGV < 1);
my $first = shift @ARGV;
unless($first =~/\d+/)
{
    exit;
}
while(@ARGV)
{
    my $item = shift @ARGV;
    print "$item\t";
}
print "\n";
