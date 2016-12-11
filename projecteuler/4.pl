#!/usr/bin/env perl

use strict;
use warnings;

my @result = ();
for (my $i = 9; $i >= 0; $i--) {
    for(my $j = 9; $j >= 0; $j--) {
        my $a = 900 + 10*$i +$j;
        for(my $b = $a; $b >= 900; $b--) {
            my $num = $a * $b;
            my $str = sprintf("%d", $num);
            my $reverse = reverse $str;
            if ($str == $reverse) {
                push(@result, $num);
                print "num = $str\n";
            }
        }
    }
}

my $max = $result[0];
for(@result) {
    if($_ > $max) {
        $max = $_;
    }
    print "$_ "
}

print "\nmax= $max";
