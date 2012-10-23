#!/usr/bin/perl
#
# Author: feng.zhang   Email: feng.zhang@mixi.co.jp  2012-10-22
#

use strict;
use warnings;

sub load_common_subroutines {
	my $filename = "navigation.pm";
	open MORE, $filename or die "can not open $filename: $!";
	undef $/;
	my $more_code = <MORE>;
	close MORE;
	eval $more_code;
	die $@ if $@;
	print $more_code;
}

&load_common_subroutines;
