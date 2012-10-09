#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-17

use warnings;
use strict;

print "please input pattern\n";
die "Can not get pattern\n" unless defined(my $pattern = <>);
die "Can not get pattern\n" if $pattern eq "\n";
chomp $pattern;
print $pattern;
print "please input filename\n";
chomp(my $file = <>);
while($file)
{
	print "please input filename\n";
	die "Can not get filename\n" unless defined(my $pattern = <>);
	die "Can not get filename\n" if $pattern eq "\n";
	eval
	{
		print $file if /$pattern/;
	}
}
