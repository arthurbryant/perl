#!/usr/bin/perl
#
# Author: feng.zhang   Email: feng.zhang@mixi.co.jp  2012-10-29
#
package Animal;

use strict;
use warnings;
	
{

	our %REG;	
	sub speak {
		my $class = shift;
		print "a $class goes ", $class->sound, "\n";
	}
	sub named {
		my $class = shift;
		my $name = shift;
		my $self = { Name => $name, Color => $class->default_color };
		bless $self, $class;
		$REG{$self} = $self;
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
	sub eat {
		my $either = shift;
		my $food = shift;
		print $either->{Name}, " eats ", $food, ".\n";
	}
	sub registered {
		return map { 'a ' . ref($_) . ' named ' . $_->{Name} } values %REG;
	}
	sub DESTROY {
		my $self = shift;
		print '[', "$self->{Name}",  " has died].\n";
	}
}

1;
