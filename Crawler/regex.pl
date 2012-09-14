#!/usr/bin/perl

use strict;
use warnings;

my $content;
while(<>)
{
	$content .= $_;
}
print $content, "\n";
my @result = ($content  =~ /readmail\.php.*?title=\"(.*?)\"/g);
print "@result";
