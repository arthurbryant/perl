#!/usr/bin/perl
# Word count program.
# Author: zhangfeng 2012-05-01

sub word_count
{
	if(@_ != 1)
	{
		print "Warning! word_count get exactly one parameter!\n";
	}
	my ($file_name) = @_;
	my $file_handler = open WORDS, "<", $file_name;
	if(!$file_handler)
	{
		die "Open $file_name failed\n";
	}	
	my %word_count_hash;
	while(defined(my $name = <WORDS>))
	{
		chomp($name);
		$word_count_hash{$name} += 1;
	}	
	foreach my $key (sort keys %word_count_hash)
	{
		print "$key\t$word_count_hash{$key}\n";
	}
	close(WORDS);
	return 1;
}

&word_count("words.txt");
