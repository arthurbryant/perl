#!/usr/bin/perl
# Batch changing filenames and clear file. for example: chp6_exe*.pl to chp7_exe*.pl.  
# Author:zhangfeng  cst.feng@gmail.com  2012-05-09

use warnings;
use strict;

if($#ARGV != 0)
{
   print "Usage: $0 chapter_num\n";
   exit;
}
my $chp_num = shift @ARGV;
my @files = `ls`;

foreach my $old_file (@files)
{
    chomp($old_file);
    if($old_file =~ /chp\d+(_exe\d+\.pl)/)
    {
        my $new_file = "chp" . $chp_num . $1;
        # change filenames
        print "Change $old_file to $new_file\n" if(!`mv $old_file $new_file`);
        # clear file
        print "clear $new_file\n" if(!`\\cp -f model.pl $new_file`);
    }
}
