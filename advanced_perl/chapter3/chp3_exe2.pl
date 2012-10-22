#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-10-10

use warnings;
use strict;

use Business::ISBN;
use Data::Dumper;

my $isbn_no = '4873113059';
my $isbn = Business::ISBN->new($isbn_no);

print Dumper($isbn->group);
print Dumper("Country code: " .  $isbn->group_code, "Publisher code: ". $isbn->publisher_code);
