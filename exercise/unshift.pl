#!/usr/bin/perl

use strict; 
use warnings;
use Data::Dumper;

# unshift: add to the front of array

my @city = ("東京", "大阪");
warn Dumper @city;

unshift(@city, "名古屋");
warn Dumper @city;
unshift(@city, ("札幌", "福岡"));
warn Dumper @city;
