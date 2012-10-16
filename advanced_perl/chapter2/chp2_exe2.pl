#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-10-09

use warnings;
use strict;

print "please input pattern\n";
chomp(my $pattern = <>);
die "Can not get pattern\n" unless defined($pattern) && length $pattern;
print $pattern, "\n";

print "please input directory\n";
chomp(my $dir = <>);
die "Can not get directory\n" unless defined($dir) && length $dir;
print $dir, "\n\n";
chdir $dir or die"Can not change to $dir";
eval {
	my @result = grep { /$pattern/ } glob("* .*");
	print map {"$_\n"} @result;
};
if($@) {
	print "Error: $@";
}
