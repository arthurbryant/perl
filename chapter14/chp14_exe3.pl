#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-09

use warnings;
use strict;

die "Can not get string: $!" unless defined(my $str = <>);
chomp $str;
die "Can not get substring: $!" unless defined(my $substr = <>);
chomp $substr;

my $pos = 0; 
while(($pos = index($str, $substr, $pos)) != -1)
{
	print $pos, " ";
	++$pos;
}
print "\n";
