#!/usr/bin/perl
#
# Author: feng.zhang   Email: feng.zhang@mixi.co.jp  2012-10-18
#

use strict;
use warnings;

use IO::File;

my %output;

while(<>) {
	my $name;
	if(/^(\S*):/) {
		$name = lc $1;
	}
	my $file_handler = $output{$name} ||= IO::File->new("> $name.info") or die "Can not create file $name.info"; 
	$file_handler->print($_);
}
