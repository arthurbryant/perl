#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-06-19

use warnings;
use strict;

my $dir = shift @ARGV;
if($dir)
{
    chdir $dir or die "Can not change to $dir: $!";
}
else
{
    chdir or die "Can not change to your home: $!";
}
my @dir_files = glob ".* *";
foreach (sort @dir_files)
{
    print "$_\n";
}
