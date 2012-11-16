#!/usr/local/perl-5.14.1/bin/perl
#
# Author: feng.zhang   Email: feng.zhang@mixi.co.jp  2012-11-15
#

use strict;
use warnings;

use Test::More;
use Test::LongString;
 
is_string (
"today is mokuyobi" x 10, 
"today is mokuyobi" x 9 .
"today is mokuyob",
);
