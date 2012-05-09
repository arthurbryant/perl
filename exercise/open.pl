#!/usr/bin/perl
# 
# Author: zhangfeng cst.feng@gmail.com 2012-05-07 

use strict; 
use warnings;

use constant FILENAME => "open.pl";

my $file_handler = open F1, FILENAME;
print $file_handler;

my $failed_open = open F2, "noexist.pl";
print $failed_open;
