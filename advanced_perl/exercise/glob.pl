#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-17

$a = "hello, arthur";
sub a
{
	print "test glob\n";
}
*potato = *a;
print $a, "\n";
&potato;

@array = (100, 300);
print "@array\n";
DobuleEachEntry(*array);
print "@array\n";

sub DobuleEachEntry
{
	print $_{0}, "\n";
	local *temp = shift;
	foreach(@temp)
	{
		$_ *= 2;
	}
}
