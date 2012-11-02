#!/usr/bin/perl
#
# Author: feng.zhang   Email: feng.zhang@mixi.co.jp  2012-11-01
#
package My::List::Util;

use strict;
use warnings;
use base qw(Exporter);

use vars qw(@EXPORT_OK);

our @EXPORT_OK = qw(sum shuffle);

sub sum {
    my @nums = @_;
    for (@nums) {
        if(!/^-?\d+$/) {
            print "Not number item!\n" ;
            return undef;
        }
    }
    my $result = 0;
    $result += $_ for (@nums); 

    return $result;
}

sub shuffle {
    my @nums = @_;
    my $length = $#nums; 
    my $i, my $j;
    for ($i = 0; $i < $length; ++$i) {
        $j = int(rand($length));
        ($nums[$i], $nums[$j]) = ($nums[$j], $nums[$i]);    
    }
    return @nums;
}

1;
