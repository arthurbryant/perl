#!/usr/bin/perl
# 
# Author: zhangfeng cst.feng@gmail.com 2012-05-07 

use strict; 
use warnings;

my @people = qw{arthur bryant wendy deuso arthur};
my %count;
$count{$_}++ foreach @people;
=pod
foreach (my $k, my $v) (%count)
{
    print $k, "=>", $v;
}
=cut
while((my $key, my $value) = each %count)
{
    print $key, " => ", $value, "\n";
}
