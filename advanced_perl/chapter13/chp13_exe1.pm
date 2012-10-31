#!/usr/bin/perl
#
# Author: feng.zhang   Email: feng.zhang@mixi.co.jp  2012-10-29
#

use strict;
use warnings;

{
	package Animal;

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
{ 	
	package Horse;
	our @ISA = qw(Animal);
	sub sound { "neigh" }
	sub DESTROY {
		my $self = shift;
		$self->SUPER::DESTROY;
		print "[", $self->{Name}, " has gone!\n";
	}
}
{
	package RaceHorse;
	our @ISA = qw(Horse);
	dbmopen(our %DBM, "data", 0666) or die "Can not access dbm: $@";
	foreach (keys %DBM) {
		print $DBM{$_}, "\n";
	}
	sub named {
		my $self = shift->SUPER::named(@_);
		@$self{qw(wins places shows losses)} = split ' ', ($DBM{$self->{Name}} || '0 0 0 0');
		$self;
	}
	sub win { shift->{wins}++; }
	sub place { shift->{places}++; }
	sub show { shift->{shows}++; }
	sub standings {
		my $self = shift;
		join ', ', map "$self->{$_} $_", qw(wins places shows losses);
	}
	sub DESTROY {
		my $self = shift;
		$DBM{$self->{Name}} = "@$self{qw(wins places shows losses)}";
		$self->SUPER::DESTROY;
	}
}

print "Start of program!\n";
my $runner = RaceHorse->named("rh");
$runner->win;
print $runner->name, " has standins ", $runner->standings, ".\n";
print "End program.\n";
