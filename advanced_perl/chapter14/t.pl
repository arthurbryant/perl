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
		my @elements = qw(color age weight height);
		our $AUTOLOAD;
		my $method;
		if(($method = $AUTOLOAD) =~ /::(\w+)$/ and grep $1 eq $_, @elements) {
			my $field = ucfirst $1;
			{
				no strict 'refs';
				#*{$AUTOLOAD} = sub {$_[0]->{$field}; print "here"; };
				*{$AUTOLOAD} = sub { print "call method $method\n"; };
			}
			goto &{$AUTOLOAD};
		}
		croak "$_[0] does not understand $method.";
	}
}
Test->age;
