#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-17

use warnings;
use strict;

use DBI;

require "../../pub_functions/print.pl";

my $dbn = "DBI:mysql:database=crawler_db; host=localhost";
my $user = "root";
my $passwd = "111111";

my $dbh = DBI->connect($dbn, $user, $passwd, {RaiseError => 1, AutoCommit => 0}) or die $DBI::errstr;
my @available_drivers = DBI->available_drivers;
print_str_array(\@available_drivers);
=pod
while(<>)
{
	chomp;
	unless($_ =~ /^$/)
	{
		# undo: check your insert statement.
		my $rows = $dbh->do("insert into sina_data(title) values('$_')");
		#my $rows = "insert into sina_data(title) values('$_')";
		print $rows, "\n";
	}
}
=cut
#print "$rows row(s) affected!\n";

$dbh->disconnect;
