#!/usr/bin/perl

use warnings;
use strict;

sub parse {
    my @scores;
    my $total;
    foreach my $s (@scores) {
        $total += calc_each($s, @scores);
    }
}

sub calc_each {
    my $char = shift;
    my @scores = shift;
    
    switch($char) 
}
