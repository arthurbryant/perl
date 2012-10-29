#!/usr/bin/perl
#
# Author: feng.zhang   Email: feng.zhang@mixi.co.jp  2012-10-26
#

#use strict;
#use warnings;

use Data::Dumper;

{
	package Test;
	use Scalar::Util qw(weaken);

	my $var = "test weaken\n";
	my $ref = \$var;
	weaken($ref);
	if(defined($ref)) {
		print "defined ref: $ref\n";
	}
	sub get_var {
		return $var;
	}
	sub get_ref{
		return $ref;
	}
}

print Test::get_var;
print Test::get_ref;
