#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-09

use warnings;
use strict;

if(@ARGV < 2)
{
	die "Usage: $0 file_name, symlink_name.";
}
my $old_file_name = shift @ARGV;
my $new_file_name = shift @ARGV;
symlink $old_file_name, $new_file_name or die "Can not symlink $old_file_name to $new_file_name: $!";
