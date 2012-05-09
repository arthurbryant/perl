#!/usr/bin/perl
# 
# Author: zhangfeng cst.feng@gmail.com 2012-05-07 

use strict; 
use warnings;

foreach my $item (1..20, 100..120)
{
    next unless $item%5;
    print $item, " is not multiple of 5\n";
}    
#print $item, "\n";
# use the Perl map operator to create a list of 100 even numbers
# see chapter 5 for details on the map and grep operators
foreach (map { $_ *= 2 } 0..99)
{
 print "Even number: $_\n";
}
print "done!\n" if(1);

# these are the users
my @users = ('joe', 'ted', 'larry');
# and this is an on-the-fly substitution of user names with hash references
map { $_ = { $_ => length } } @users;
print $key, " => ", $value  
# @users is now ( { 'joe' => 3 },
#                 { 'ted' => 3 },
#                 { 'larry' => 5 } )
