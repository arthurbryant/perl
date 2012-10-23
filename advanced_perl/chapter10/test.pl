#!/usr/bin/perl
#
# Author: feng.zhang   Email: feng.zhang@mixi.co.jp  2012-10-23
#

use strict;
use warnings;

use Data::Dumper;

require "chp10_exe1.pm";

chomp(my $input = <>);
my $result = Oogaboogoo::Date::month_change($input);
print Dumper($result);
