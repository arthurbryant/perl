#!/usr/bin/env perl

use strict;
use warnings;

my @arr = (2);
for (my $i = 3; $i <= 1000; $i++) {
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
    }
}

for (my $i = 9; $i >= 1; $i--) {
    for(my $j = 9; $j >= 0; $j--) {
        for(my $k = 9; $k >= 0; $k--) {
            my $num = 100001 * $i + 10010 * $j + 1100 * $k;
            print "$num = ";
            for(@arr) {
                while($num % $_ == 0) {
                    $num = $num / $_;
                    print "$_ * ";
                }
            }
            if ($num < 1000) {
                print "$num -> OK\n";
                last;
            }
            else {
                print "$num -> NO\n";
            }
        }
    }
}
