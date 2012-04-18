#!/usr/bin/perl

use 5.010;
use strict;

sub greet
{
	state $user_before = "";
	my ($user) = @_;
	#print "Now ", $user_before, "\n";
	#if($user_before eq undef) 
	if($user_before eq "") 
	{
		print "Hi $user! You are the first one here!\n";
	}
	else
	{
		print "Hi $user! $user_before is also here!\n";
	}
	$user_before = $user;
	#print "Now ", $user_before, "\n";
}
greet("Arthur");
greet("Bryant");
greet("bob");
