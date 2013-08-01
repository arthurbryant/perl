#!/usr/bin/perl
# 
# Author: zhangfeng cst.feng@gmail.com 2012-07-23

use strict; 
use warnings;

use Carp::Assert;

my $text = "<A>Here is anjjksdfhsajjkkjkother anhor</A><A>hello, arthur</A>\n<TAG>good</TAG>";
#$_ = $text;
=pod
if(m/<(A|TAG)>[\w\s.]+<\/\1>/g)
{
	print "$1\n";
}
=cut
while($text =~ m/<(A|TAG)>(.*?)<\/\1>/g)
{
	print "$1\n";
}
my $age = 20;
assert $age >= 18 && $age <= 35;
print "yong";
