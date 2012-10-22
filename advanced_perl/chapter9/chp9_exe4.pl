#!/usr/bin/perl
#
# Author: feng.zhang   Email: feng.zhang@mixi.co.jp  2012-10-19
#

use strict;
use warnings;

use Data::Dumper;
use File::Basename;

sub iter_dir {
	my $space = shift;
	my $path = shift; 
		my ($name, undef, undef) = fileparse($path);
		if(-f $path or -l $path) {
			print $space, $name, "\n";
			return;
		}
		elsif(-d $path) {
			print $space, $name, "\n";
			$space = $space . "  ";	
			opendir PATH, $path or die "Can not open $path";
			my @files = readdir PATH;
			close PATH;
			foreach (@files) {
				next if($_ eq '.' or $_ eq '..');
				iter_dir($space, "$path/$_");
			}
		}
		else {
			print $space, $name, "\n";
			return;
		}
}

my $space = "";
my $root = "/home/bkapps/"; 
&iter_dir($space, $root);
