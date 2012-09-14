#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-17

use warnings;
use strict;
use Date::Calc;

my ( $sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst ) = localtime();
$year += 1900;
$mon += 1;
print "year=", $year, ", month=$mon\n";
my @params = ($year, $mon, 1, 0, 0, 0);
my $datetime = Date::Calc::Date_to_Time(@params);
print $datetime, "\n";
my $tt = Date::Calc::Date_to_Time(2012, 7, 26, 0, 00, 0);
print "now tt=", $tt, "\n";
=pod
my $t = time();
print "now t =", $t, "\n";
my $tt = Date_to_Time(2012, 8, 3, 14, 00, 0);
print "now tt=", $tt, "\n";
print "time diff = ", ($tt-$t)/3600, "\n";

my $std = Date_to_Time(1970, 1, 1, 02, 00, 00);
print "now std=", $std, "\n";

	#my $first_day_of_month = ($year+1990) . "-" . ($mon+1) . "-01"; 
#    #my $books = $self->{dbh}->selectall_arrayref("select * from book where create_time >= $first_day_of_month", { Slice => {} } ) or die "Failed to select this month's book from DB" . $DBI::errstr;
#        my $books = $self->{dbh}->selectall_arrayref("select * from book", { Slice => {} } ) or die "Failed to select this month's book from DB" . $DBI::errstr;
