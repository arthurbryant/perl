#!/usr/bin/perl
#
# Author: feng.zhang   Email: feng.zhang@mixi.co.jp  2012-10-18
#

use strict;
use warnings;

use IO::Scalar;
use IO::File;
use IO::Tee;

my $scalar;
my $scalar_sh;
my $file = "date.log";
my $file_fh;
print "Please choose how to output:[s(Scalar) | f(file) | t(tee)]";
chomp(my $choose = <>);
die "Wrong input\n" unless(defined($choose) and length $choose);
if($choose =~ /^[sS]/) {
	$scalar_sh = IO::Scalar->new(\$scalar);	
	
}
elsif($choose =~ /^[fF]/) {
	$file_fh = IO::File->new($file, "w"); 
}
elsif($choose =~ /^[tT]/) {
	$scalar_sh = IO::Scalar->new(\$scalar);	
	$file_fh = IO::File->new($file, "w"); 
}
else {
	die "Wrong input";	
}
# date output
my $times = time();
my ($sec,$min,$hour,$mday,$month,$year,$wday,$stime) = localtime($times);
$year += 1900;
$month += 1;
my $date_string = $mday . "-" . $month . "-" . $year . "  " . $wday . "\n";
print $date_string;

print $scalar_sh $date_string if($scalar_sh);
print $file_fh $date_string if($file_fh);
