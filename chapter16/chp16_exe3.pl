#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-11

use warnings;
use strict;

require "../pub_functions/print.pl";

my @weekends = qw{六 日};
my $date = `date` or die "Execute date error: $!";
# The following is used to test weekends.
# my $date = `date --date=2012-07-15` or die "Execute date error: $!";
if($date =~ /星期(\S+)/)
{
	foreach(@weekends)
	{
		if($_ eq $1)
		{
			print "go play\n";
			exit 1;
		}
	}
	print "get to work\n";
}
