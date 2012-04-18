#!/usr/bin/perl

@lines = qw/ fred betty barney dino wilma pebbles bamm-bamm /;
chomp(@nums = <stdin>);
foreach $num (@nums)
{
	print $lines[$num-1], "\n";
}
