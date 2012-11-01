#!/usr/bin/perl
#
# Author: feng.zhang   Email: feng.zhang@mixi.co.jp  2012-10-30
#

use strict;
use warnings;

my $regex = qr/[rn]t/i;
print $regex, "\n";
my $string = "arthur bryant";
$string =~ s/$regex/XX/mg;
print $string, "\n";

my $str2 = "abc\n";
print "match ", '$', "\n" if($str2 =~ /abc$/);
print "match ", '\z ', "\n" if($str2 =~ /abc\z/);
