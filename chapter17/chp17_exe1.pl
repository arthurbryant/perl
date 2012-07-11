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
	eval
	{
		my @result = grep { /$input/ } @contents;
		print "@result";
		print "\nnumber: @result\n";
	};
	if($@)
	{
		die "$@";
	}
}

