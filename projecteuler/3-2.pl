#!/usr/bin/env perl

my @arr = (2);
for (my $i = 3; $i < 10000; $i++) {
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

for(@arr) {
    print "$_ "
}
