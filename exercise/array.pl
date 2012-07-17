#!/usr/bin/perl

use strict;
use warnings;

require "../pub_functions/print.pl";

my @array = qw{1 3 5 7};
push(@array, 2, 1, 2);
&print_num_array(\@array);

