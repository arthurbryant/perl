#!/usr/bin/perl

package Horse;

use strict;
use warnings;

use Animal;

{
our @ISA = qw(Animal);
sub sound { "neigh" }
sub DESTROY {
	my $self = shift;
	$self->SUPER::DESTROY;
	print "[", $self->{Name}, " has gone!\n";
}
}

1;
