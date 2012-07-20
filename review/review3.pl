#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-20

use warnings;
use strict;

# array reference.
my $arr = [1, 2, 3, 4];
print "@$arr\n"; 

# hash reference.
my $h = {id => "abc", name => "arthur", age => 23};
foreach (keys %$h)
{
	print $_, "\t", $h->{$_}, "\n";
}

# sort
my @arr = 
(
	{id => 1, name => 'arthur', count => 13},
	{id => 2, name => 'tom', count => 2},
	{id => 3, name => 'deuso', count => 45},
	{id => 4, name => 'daisy', count => 19},
);
my @sorted_arr = sort {$a->{"count"} <=> $b->{"count"}} @arr;
foreach (@sorted_arr)
{
	print $_->{"count"}, "\n";	
}

# eval
eval 
{
	eval 
	{
		die "error!";
	};
	print $@ if $@;
};
print $@ if $@;
print "End!\n";

# slices
my %h = (id => "abc", name => "arthur", age => 23);
my @arr = @h{qw(name age)};
print "@arr\n";

# map
my @keys = qw{id age};
my @filter_v = map {$_ => $h{$_}} @keys;
print "@filter_v\n";
# map to for
foreach (@keys)
{
	push @filter_v, ($_ => $h{$_});
}
print "@filter_v\n";
my %res_h = @filter_v;
foreach (keys %res_h)
{
	print "$_ => $res_h{$_}\n";
}
