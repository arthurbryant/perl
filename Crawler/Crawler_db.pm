package Crawler::Crawler_db;
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-17

use warnings;
use strict;

use DBI;

use Exporter;
use vars qw(@ISA @EXPORT_OK);
@ISA = qw(Exporter);
@EXPORT_OK = qw(connect_db insert_db disconnect_db get_data);

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
		my $rows = $dbh->do("insert into sina_data(title) values('$_')") or die $DBI::errstr;
		print $rows, "\n";
	}
}

sub get_data 
{
	my ($dbh, $statement) = @_;
	# undo: check statement.
	my $result = $dbh->prepare($statement) or die $DBI::errstr;
	$result->execute() or die $DBI::errstr;
	my $title; 
	$result->bind_columns(\$title) or die $DBI::errstr;
	my @rows;
	while($result->fetch())
	{
		print $title, "\n";
		push @rows, $title;
	}
	return @rows;
}

sub disconnect_db
{
	my ($dbh) = @_;
	$dbh->disconnect or die "Disconnect error: $!";
}
