#!/usr/bin/perl
#
# Author: feng.zhang   Email: feng.zhang@mixi.co.jp  2012-10-25
#

use strict;
use warnings;

{
	package Animal;
	sub speak {
		my $class = shift;
		print "a $class goes ", $class->sound, "\n";
	}
}
{ 	
	package Horse;
	our @ISA = qw(Animal);
	sub sound { "neigh" };
	sub name {
		my $self = shift;
		$self;
	}
}

print Horse->name, "\n";
