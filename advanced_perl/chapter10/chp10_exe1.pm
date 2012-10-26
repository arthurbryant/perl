#!/usr/bin/perl
#
# Author: feng.zhang   Email: feng.zhang@mixi.co.jp  2012-10-23
#
package Oogaboogoo::Date;

use strict;
use warnings;

use vars qw(@day @month);

@day = qw(ark dip wap sen pop sep kir);
@month = qw(diz pod bod rod sip wax lin sen kun fiz nap dep);

sub day_change {
	my $index = shift;
	return '' unless ($index =~ /[0-6]/);
	return $day[$index]; 
}
sub month_change {
	my $index = shift;
	return '' unless ($index =~ /[0-9]|10|11]/);
	return $month[$index];
}
