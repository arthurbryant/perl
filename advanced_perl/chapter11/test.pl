#!/usr/bin/perl
#
# Author: feng.zhang   Email: feng.zhang@mixi.co.jp  2012-10-23
#

use strict;
use warnings;

my $old_file = "chp10_exe_1.pl";
print $1, "\n" if($old_file =~ /chp\d+(_exe\d+\.p[l|m])/);
print $1, "\n" if($old_file =~ /chp\d+(_exe\d+\.[pl|pm])/);

