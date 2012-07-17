#!/usr/bin/perl

use strict;
use warnings;
use LWP::UserAgent;

my $ua = LWP::UserAgent->new;
$ua->agent("spider name");
my $res = $ua->head("http://www.yahoo.com.cn");
foreach ($res->header_field_names) 
{ 
	print "$_: ", $res->header($_), "\n";
}
my $response = $ua->get("http://www.baidu.com");
print "$response";
