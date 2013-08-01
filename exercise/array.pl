#!/usr/bin/perl

use strict;
use warnings;

use Data::Dumper;

require "../pub_functions/print.pl";

my @array = qw/1 3 5 7/;
push(@array, 2, 1, 2);
my $hash1 = {
    name => "arthur",
    age => 27,
};
my %hash2 = (
    name => "arthur",
    age => 27,
);
warn Dumper $hash1;
warn Dumper $hash1;
warn Dumper \%hash2;

&print_num_array(\@array);

