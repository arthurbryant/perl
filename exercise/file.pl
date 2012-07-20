#!/usr/bin/perl
# 
# Author: zhangfeng cst.feng@gmail.com 2012-06-11

use strict; 
use warnings;

while(<>)
{
	chomp;
	if(-z)
	{
		print "exist and empty!\n";
	}
	elsif(-e _)
	{
		print "exists and not empty!\n";
	}
	else
	{
		print "not exists!\n";
	}
}
