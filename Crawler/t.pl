#!/usr/bin/perl

use warnings;
use strict;

BEGIN {unshift(@INC, "..");}

use Crawler::Crawler_db qw(connect_db insert_db disconnect_db get_data);

my $dbh = connect_db();
# get titles from database. 
my $sql = "select title from sina_data";
my @titles = get_data($dbh, $sql);

print @titles;
disconnect_db($dbh);
