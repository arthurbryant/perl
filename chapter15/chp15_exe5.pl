#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-10

use 5.010;
use warnings;
use strict;

sub divisors
{
    my $number = shift;
    my @divisors = ();
    foreach my $divisor (2..($number/2))
    {
        push @divisors, $divisor unless $number % $divisor;
    }
    return @divisors;
}
my $favor_num = 4;
chomp(my $input = <>);
die "Wrong input!" unless $input ~~ /^\d+$/;
given($input)
{
    when(! ($_ % $favor_num)) {print "divided by my favourite number.\n"; continue;}
    when(%2) {print "odd number\n";}
    when(! %2) {print "even number\n";}
}
my @result = &divisors($input);
my @temp = ();
given(@result)
{
    when($_ ~~ @temp) {print "$input is prime.\n"; exit 1;}
    default {print "@result\n";} 
}
