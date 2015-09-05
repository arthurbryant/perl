#!/usr/bin/perl

use strict; 
use warnings;

use Data::Dumper;

my %hash = ( "one" => 1 , "two" => 2 , "three" => 3 ) ;

warn Dumper %hash;
my ($abc) = ("a", 2, "b", 4);
warn Dumper $abc->{"1"};
