#!/usr/bin/perl
#
# Author: feng.zhang   Email: feng.zhang@mixi.co.jp  2012-10-30
#

use strict;
use warnings;

=pod
{
	package Test;

	sub AUTOLOAD {
		if()		
	}
}
=cut
my $autoload = "Test::age";
my @elements = qw(color age weight height);
if($autoload =~ /::(\w+)$/ and grep $1 eq $_, @elements) {
	my $field = ucfirst $1;
	print $_, "\n";
}
else {
	print "failed\n";
}
