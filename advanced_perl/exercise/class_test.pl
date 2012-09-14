#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-17

use warnings;
use strict;

use Class1 qw(new addItem);

my $class = Class1->new();
print $class->addItem(2, 3);
print $class->{NAME}, "\n";
