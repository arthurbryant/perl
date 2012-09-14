#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-11

use warnings;
use strict;

use Singleton;

sub main
{
    return Singleton->get_instance();
}

&main;
