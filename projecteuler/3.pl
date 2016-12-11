#!/usr/bin/env perl

use strict;
use warnings;

# TODO: use sub
=pod
sub find_prime() {
    my $max = shift @_
    my $i   = shift @_
    my @arr = shift @_
    while ($max % $i == 0) {
        $max = $max/$i;
        print "After divied by $i the new max is: $max\n";
        push(@result, $_);
    }
}
=cut

my @arr = (2);
my @result = ();
my $max = 600_851_475_143;
for(@arr) {
    while ($max % $_ == 0) {
        $max = $max/$_;
        print "After divied by $_ the new max is: $max\n";
        push(@result, $_);
    }
}
for (my $i = 3; $i <= $max; $i++) {
    my $flag = 1;
    for(@arr) {
        if ($i % $_ == 0)
        {
            $flag = 0;
            last;
        }
    }
    if ($flag == 1) {
        push(@arr, $i);
        while ($max % $i == 0) {
            $max = $max/$i;
            print "After divied by $i the new max is: $max\n";
            push(@result, $i);
        }
    }
}

for(@result) {
    print "$_ "
}
