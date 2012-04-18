#!/usr/bin/perl

my @names = qw/ arthur deuso wendy hello bryant/;
my $result = &which_element_is("bryant",  @names);
print $result, "\n";

sub which_element_is
{
	my($what, @array) = @_;
	foreach(0..$#array)
	{
		if($what eq $array[$_])
		{
			return $_;
		}
	}
	return -1;
}
