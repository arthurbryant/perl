#!/usr/bin/perl
# Batch changing filenames and clear file. for example: chp6_exe*.pl to chp7_exe*.pl.  
# Author:zhangfeng  cst.feng@gmail.com  2012-05-09

use warnings;
use strict;

use Data::Dumper;

if($#ARGV != 0) {
   print "Usage: $0 chapter_num\n";
   exit;
}
my $chp_num = shift @ARGV;
my @files = glob("*");
Dumper(@files);


foreach my $old_file (@files) {
    chomp($old_file);
	# change *.pl and *.pm files
	#if($old_file =~ /chp\d+(_exe\d+\.[pl|pm])/) {
	# Q: [] can be used to catch pl or pm, why?
    if($old_file =~ /chp\d+(_exe\d+\.p[l|m])/) {
		#if($old_file =~ /chp\d+(_exe\d+\.[pl|pm])/) {
		print $1, "\n";
        my $new_file = "chp" . $chp_num . $1;
        # change filenames
        print "Change $old_file to $new_file\n" if(!`mv $old_file $new_file`);
        # clear file
        print "clear $new_file\n" if(!`\\cp -f model.pl $new_file`);
    }
	elsif($old_file =~ /model\.pl/) {
		`cp -rf model.pl test.pl`;
		print "cp -rf model.pl test.pl\n";
	}
}
