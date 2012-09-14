#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-17
use warnings;
use strict;

my $test = "test\n";
sub test
{
	print "test sub\n";
}
print $test;
&test();

$a = 20;
{
	my $param = 1000;
	&param_test($param);
	local($a);
	$a = "teset a\n";
	print $a;
}
print $a;

sub param_test
{
	my ($tmp) = @_;
	print $tmp, "\n";
}
*tomato = *a;
print $tomato;
