#!/usr/bin/perl
#
# Author: feng.zhang   Email: feng.zhang@mixi.co.jp  2012-10-26
#

use strict;
use warnings;

use Data::Dumper;

{
	package Animal;
	sub speak {
		my $class = shift;
		print "a $class goes ", $class->sound, "\n";
	}
	sub named {
		my $class = shift;
		my $name = shift;
		my $self = { Name => $name, Color => $class->default_color };
		bless $self, $class;
	}
	sub name {
		my $either= shift;
		ref $either
			? $either->{Name}
			: "an unnamed $either";
	}
	sub set_name {
		my $class = shift;
		$class->{Name} = shift;
	}
	sub default_color { "brown" }
	sub color {
		my $either = shift;
		ref $either
			? $either->{Color}
			: "an uncolored $either"
	}
	sub set_color {
		my $self = shift;
		$self->{Color} = shift;
	}
}
{ 	
	package Horse;
	our @ISA = qw(Animal);
	sub sound { "neigh" }
}
{ 	
	package Sheep;
	our @ISA = qw(Animal);
	sub color { "white" }
	sub sound { "neigh" }
}

my $tv_horse = Horse->named("Mr. Ed");
$tv_horse->set_name('Mister Ed');
$tv_horse->set_color('grey');
print $tv_horse->name, ' is ', $tv_horse->color, "\n";
print Sheep->name, ' colored ', Sheep->color, ' goes ', Sheep->sound, "\n";
