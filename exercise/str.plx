#!/usr/bin/perl

use strict;
use warnings;

sub str
{
	my $n = 2;
	state $s = "hello";
	$s = $S . $n;
	print $s, "\n";
}

&str;
