#!/usr/bin/perl
#  
# Author: zhangfeng  cst.feng@gmail.com  2012-10-10

use warnings;
use strict;

use Cwd;
use File::Spec;

my $cur_dir = Cwd::cwd();
my @result;
while (my $file = <>)
{
	chomp $file;
	my $path = " " x 4 . File::Spec->catfile($cur_dir, $file) . "\n";
	push @result, $path;
}
print map {$_;} @result; 
=pod
foreach my $item (@result)
{
	print $item;
}
