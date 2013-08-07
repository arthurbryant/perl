#!/usr/bin/perl

use strict;
use warnings;

use Data::Dumper;
use feature qw(say);

my %hash = (name => 'arthur', age => 27);
my $hash_ref = \%hash;
warn Dumper $hash_ref;
say $hash{name};
say $hash_ref->{name};

sub test {
    say "sub method test";
};

my $sub_ref = \&test;
warn Dumper $sub_ref;
$sub_ref->();

=pod
my @all_files = glob "*";
warn Dumper @all_files;
=cut

my $pi_ref = \3.14;
say $pi_ref;
say $$pi_ref;

my $hash_r = {name => 'arthur', age => 27};
my $hash_r_r = \$hash_r;
warn Dumper $$hash_r_r;
warn Dumper $$hash_r_r->{name};
say ref $hash_r;
say ref $hash_r_r;
say ref $pi_ref;

my $s_ref = sub {"ok"};
say ref $s_ref;
