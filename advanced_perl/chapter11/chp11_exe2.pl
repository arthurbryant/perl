#!/usr/bin/perl
#
# Author: feng.zhang   Email: feng.zhang@mixi.co.jp  2012-10-23
#

use strict;
use warnings;

{
	package LivingCreature;
	sub speak {
		my $class = shift;
		if(@_) {
			print "$class goes!\n";
		}
		else {
			print "$class class goes! ",  $class->sound, "\n";
		}
	}
}
{
	package Animal;
	our @ISA = qw(LivingCreature);
	sub speak {
		my $class = shift;
		print "a $class goes ", $class->sound, "\n";
	}
}
{
	package Person;
	our @ISA = qw(LivingCreature);
	sub sound { "hahaha" };	
}
{
	package Cow;
	our @ISA = qw(Animal);
	sub sound { "moooo" }
}
{
	package Horse;
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

Person->speak();
Person->speak("hello");
