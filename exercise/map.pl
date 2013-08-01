#!/bin/perl

use strict;
use warnings;

use Data::Dumper;

my @values = ( 53, 39, 42, 88, 15 );

my $params = {"name" => \@values};
warn Dumper $params;
$params = {"name" => @values};
warn Dumper $params;

# @values の各要素を 2乗したリストを作る
my @ret = map{
    +{name => $_ ** 2}
} @values;

warn Dumper @ret;
