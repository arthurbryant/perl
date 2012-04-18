#!/usr/bin/perl

use 5.010;
use strict;

sub greet2
{
	# Empty list. Can not initilize state list.
	state @users_before; 
	my ($user) = @_;
	if(@users_before == ()) 
	{
		print "Hi $user! You are the first one here!\n";
	}
	else
	{
		print "Hi $user! I've seen @users_before\n";
	}
	push @users_before, $user;
}
greet2("Arthur");
greet2("Bryant");
greet2("bob");
greet2("Tom");
