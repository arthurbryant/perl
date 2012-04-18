#!/usr/bin/perl

chomp(@lines = <stdin>);
@lines = sort @lines;
print "@lines";
print "\n";
foreach $line (@lines)
{
	print $line, "\n";
}
