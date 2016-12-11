#!/usr/bin/env perl

use strict;
use warnings;

my @array = ("arthur", 31, "male");

print "@array[0..$#array]\n";

sub change_array {
    my $tmp = @_;
    push(@$tmp, "engineer");
}

change_array(\@array);
print "@array[0..$#array]\n";
