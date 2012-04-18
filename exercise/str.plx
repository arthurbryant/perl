#!/usr/bin/perl

use 5.010;
use strict;

sub str
{
	my $n = 2;
	state $s = "hello";
	$s = $S . $n;
	print $s, "\n";
}

&str;
