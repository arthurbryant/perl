package Crawler::Crawler_db;
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-17

use warnings;
use strict;

use DBI;

use Exporter;
use vars qw(@ISA @EXPORT_OK);
@ISA = qw(Exporter);
@EXPORT_OK = qw(connect_db insert_db disconnect_db);

my $dbn = "DBI:mysql:database=crawler_db; host=localhost";
my $user = "root";
my $passwd = "111111";

sub connect_db
{
	my $dbh = DBI->connect($dbn, $user, $passwd, {RaiseError => 1, AutoCommit => 0}) or die $DBI::errstr;
	return $dbh;
}

sub insert_db
{
	my ($dbh, @titles) = @_;
	foreach (@titles)
	{
		# undo: check your insert statement.
		my $rows = $dbh->do("insert into sina_data(title) values('$_')") or die "Insert failed: $!";
		print $rows, "\n";
	}
}

sub disconnect_db
{
	my ($dbh) = @_;
	$dbh->disconnect or die "Disconnect error: $!";
}
