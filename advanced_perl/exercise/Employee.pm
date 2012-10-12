#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-17

use warnings;
use strict;

package Employee;

sub create
{
	my ($pkg, $name, $age) = @_;
	return (bless {name => $name, age => $age, salary => 0}, $pkg); 
}
sub Destory
{
	my $temp = shift;
	print "destory $temp->{name}\n";
}
sub set_salary
{
	my ($obj, $new_salary) = @_;
	$obj->{salary} = $new_salary;
	return $new_salary;
}

1;
