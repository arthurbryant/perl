#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-09

use warnings;
use strict;

if(@ARGV < 2)
{
	die "Usage: $0 old_file_name, new_file_name.";
}
my $old_file_name = shift @ARGV;
my $new_file_name = shift @ARGV;
rename $old_file_name, $new_file_name or die "Can not rename $old_file_name to $new_file_name: $!";
