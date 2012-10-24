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
print "Please input Cow | Horse | Sheep | Mouse\n";
while(chomp(my $input = <stdin>)) {
	my @animals = split(/ /, $input);
	foreach my $animal (@animals) {
		if ($animal  =~ /[Cow|Horse|Sheep|Mouse]/) {
			$animal->speak('$animal');
		}
	}
}
