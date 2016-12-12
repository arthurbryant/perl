#!/usr/bin/env perl

use strict;
use warnings;

my @prime = (2);
my @result = ();
for(my $i = 0; $i <= 20; ++$i) {
    $result[$i] = 0;
}

for (my $i = 3; $i <= 20; ++$i) {
    my $flag = 1;
    for(@prime) {
        my $count = 0;
        my $tmp = $i;
        while($tmp % $_ == 0)
        {
            $tmp = $tmp/$_;
            $count++;
            if($count > $result[$_]) {
                $result[$_] = $count;
            }
            $flag = 0;
        }
    }
    if($flag == 1) {
        push(@prime, $i);
        $result[$i] += 1;
    }
}

my $sum = 1;
for(my $i = 0; $i < $#result; ++$i) {
    if($result[$i] != 0) {
        $sum *= $i ** $result[$i];
    }
}
print "sum = $sum\n";
