#!/usr/bin/perl
# 
# Author: zhangfeng cst.feng@gmail.com 2012-06-11

use strict; 
use warnings;

use LWP::UserAgent;

print "$LWP::VERSION\n";
my $browser = LWP::UserAgent->new();
$browser->agent('Mozilla/4.0');
my $url = "http://www.baidu.com";
my $req = HTTP::Request->new(GET => $url);
my $result = $browser->request($req);
if($result->is_success)
{
	print $result->content, "\n";
}
else
{
	print $result->status_line, "\n";
}
