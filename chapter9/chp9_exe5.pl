#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-05-17

use warnings;
use strict;

$#ARGV >= 0 or die("Usage: $0 filenames");
# file hash 
my %file_hash;
foreach my $file (@ARGV)
{
    $file_hash{$file} = 0;
}
# filter files
while(<>)
{
    if(/^## Copyright/)
    {
        delete $file_hash{$ARGV};
    }
}
# add copyright info.
$^I = ".bak";
@ARGV = sort keys %file_hash;
while(<>)
{
    print;
    if(/^#!/)
    {
        print "## Copyright (C) 2012 by zhangfeng\n";
    }
}
