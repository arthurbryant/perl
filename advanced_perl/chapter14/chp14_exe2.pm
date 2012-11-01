#!/usr/bin/perl
#
# Author: feng.zhang   Email: feng.zhang@mixi.co.jp  2012-10-30
#

use strict;
use warnings;

{
	package MyDate;
	use Carp;

	sub AUTOLOAD {
		my @elements = qw(day month year);
		our $AUTOLOAD;
		my $method;
		if(($method = $AUTOLOAD) =~ /::(\w+)$/ and grep $1 eq $_, @elements) {
			my $field = ucfirst $1;
			{
				no strict 'refs';
				my (undef, undef, undef, $d, $m, $y, undef, undef, undef) = localtime();
				my $ret;
				if ($field eq 'Day') {
					$ret = $d;	
				}
				elsif($field eq 'Month') {
					$ret = $m+1;
				}
				elsif($field eq 'Year') {
					$ret = $y+1900;	
				}
				*{$AUTOLOAD} = sub { return $ret; };
			}
			goto &{$AUTOLOAD};
		}
		croak "$_[0] does not understand $method.";
	}
	sub UNIVERSAL::debug {
		print scalar localtime, "\n";
	}
}
print MyDate->day, "\n";
print MyDate->month, "\n";
print MyDate->year, "\n";
MyDate->debug;
