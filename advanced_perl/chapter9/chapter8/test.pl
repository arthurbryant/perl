#!/usr/bin/perl
#
# Author: feng.zhang   Email: feng.zhang@mixi.co.jp  2012-10-18
#

use strict;
use warnings;

use IO::Scalar;

my $string_log = '';
my $scalar_sh = IO::Scalar->new(\$string_log);
$scalar_sh->print("arthur is here\n");
print $scalar_sh->getlines;
print $string_log;
while(<$scalar_sh>) {
	#next unless /ar/;
	print $_;
}
=pod
while(defined($_ = $scalar_log->getline)) {
	print $_;
}
