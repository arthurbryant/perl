#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-11

use warnings;
use strict;

my $filename = "text";
open FH, $filename or die "Open $filename failed: $!";
chomp(my @contents = <FH>);
while(defined(my $input = <>))
{
	exit 1 if($input =~ /^\s+$/);
	chomp $input;
	my @matches;
	eval
	{
		@matches = grep { /$input/ } @contents;
	};
	if($@)
	{
		die "$@";
	}
	else
	{
		print map "$_\n", @matches;
		print "\n";
		print "number:", scalar @matches, "\n";
	}
}

