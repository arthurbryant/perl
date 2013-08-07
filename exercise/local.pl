#!/usr/bin/perl

use Data::Dumper;
use feature qw(say);

local($value) = 100;
{
    my $value = 20;
    say $value;
}
