#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-05-17

use warnings;
use strict;

opendir DH, "." or die "Cann't open dir";
while(my $name = readdir DH)
{
    print $name, "\n";
}
