#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-09

use warnings;
use strict;

my @files = glob "* .*";
foreach my $file (@files)
{
	if(-l $file)
	{
		if(my $where = readlink $file)
		{
			print "$file -> $where\n";
		}
	}
}
