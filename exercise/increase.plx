#!/usr/bin/perl

use 5.010;

sub increase
{
	state $n = 0;
	$n += 1;
	print "$n\n";
}
increase;
increase;
increase;
