#!/usr/bin/perl

use warnings;
use strict;

while(<>)
{
	m/basic\/readmail\.php\S+\s+title="(.*)">/g;
	print $1;
}
