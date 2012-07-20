#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-11

use warnings;
use strict;

use BankAccount('deposit');
use Global;

require "../../pub_functions/print.pl";

print_str_array(\@ARGV);
BankAccount::deposit(100);
#my $sum = $BankAccout::total;
#print $sum, "\n";
$_ = "main";
print $_, "\n";
Global::change_argv();
print $_, "\n";
#print "@ARGV";
#print_str_array(\@ARGV);
foreach my $name (keys %main::)
{
	print $name, "\n";
}
