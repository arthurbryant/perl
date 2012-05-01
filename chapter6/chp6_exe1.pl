#!/usr/bin/perl
# Find second name by frist name.
# Author: zhangfeng 2012-05-01

my %family_name = (
	"feng" => "zhang", 
	"lu" => "zeng", 
	"chunjie" => "luo", 
	"fred" => "flintstone", 
	"barney" => "rubble", 
	"wilma" => "flintstone");

while(defined(my $first_name = <stdin>))
{
	chomp($first_name);
	if(exists $family_name{$first_name})
	{
		print $family_name{$first_name}, "\n";
	}
	else
	{
		print "No one named $first_name.\n";
	}
}
