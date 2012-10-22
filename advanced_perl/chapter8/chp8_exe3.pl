#!/usr/bin/perl
#
# Author: feng.zhang   Email: feng.zhang@mixi.co.jp  2012-10-18
#

use strict;
use warnings;

use IO::Dir;
use IO::File;
use IO::Tee;

foreach my $dir (@ARGV) {
	if(-d $dir) {
		my $dir_fh = IO::Dir->new($dir) or die "Can not open $dir";
		print $dir, "\n";
		print "------------\n";
		&show_dir($dir_fh);
	}
}
sub show_dir {
	my $fh = shift;
	while(defined(my $file = $fh->read)) {
		print $file, "\n";	
	}
}
