#!/usr/bin/perl

use strict; 
use warnings;

our $A = "ARTHUR";
if(1)
{
    my $A = "Bryant";
    say $A;
    our $A;
    say $A;
    $A = "arthur";
    say $A;
}
say $A;

