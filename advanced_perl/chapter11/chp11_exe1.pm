#!/usr/bin/perl
#
# Author: feng.zhang   Email: feng.zhang@mixi.co.jp  2012-10-23
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
	package Cow;
	#use vars qw(@ISA);
	#@ISA = qw(Animal);
	our @ISA = qw(Animal);
	sub sound { "moooo" }
}
{
	package Hores;
	our @ISA = qw(Animal);
	sub sound { "neigh" };
}
{
	package Sheep;
	our @ISA = qw(Animal);
	sub sound { "baaaah" };
}
{
	package Mouse;
	our @ISA = qw(Animal);
	sub sound { "squeek" };
	sub speak {
		my $class = shift;
		$class->SUPER::speak;
		print "[but you can barely hear it!]\n";
	}
}

Animal::speak('Cow');
# Q: can do below
#Animal->speak('Cow');
Animal::speak('Mouse');
