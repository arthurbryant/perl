#!/usr/bin/perl
#
# Author: feng.zhang   Email: feng.zhang@mixi.co.jp  2012-10-23
#
package Ooqabooqoo::Print;

use strict;
use warnings;

use Data::Dumper;

require "chp10_exe1.pm";

sub date {
	my ($sec, $min, $hour, $day, $month, $year, $wday) = localtime;
	my $oo_day = Oogaboogoo::Date::day_change($wday-1);
	my $oo_month = Oogaboogoo::Date::month_change($month);
	$month += 1;
	$year += 1900;
	print "Today is $oo_day, $oo_month $day $year\n";  
	
}

&date;
