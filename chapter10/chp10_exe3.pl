#!/usr/bin/perl
# Printf %ENV.
# Author: zhangfeng cst.feng@gmail.com 2012-06-11

sub printf_env
{
    # undefined environment variable.
    $ENV{'undef_test'} = undef;
	my $max_length = 0;
	my $len = 0;
	# find the max length of the keys.
	foreach my $key (keys %ENV)
	{
		$len = length($key);
		if($len > $max_length)
		{
			$max_length = $len;
		}
	}
	# add "\t" between key and value.
	$max_length += 4;
	foreach my $key (sort keys %ENV)
	{
        printf "%-${max_length}s%s\n", $key, defined($ENV{$key}) ? $ENV{$key} : "(undefined value)";
	}
	return 1;
}

&printf_env;
