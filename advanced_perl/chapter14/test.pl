#!/usr/bin/perl
#
# Author: feng.zhang   Email: feng.zhang@mixi.co.jp  2012-10-30
#

use strict;
use warnings;

{
	package Test;
	use Carp;

	sub AUTOLOAD {
		our $AUTOLOAD;
		(my $method = $AUTOLOAD) =~s/.*:://s;
		if($method eq 'eat') {
			eval q {
				sub eat {
					print "eat in AUTOLOAD!\n";
				}	
			};	
			die $@ if($@);
			goto &eat;
		}
		else {
			croak "$_[0] does not know method $method\n";
		}
	}
}
Test->eat;
