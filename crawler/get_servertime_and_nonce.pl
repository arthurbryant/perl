#!/usr/bin/perl
#get servertime and nonce

use warnings;
use strict;

use LWP::UserAgent;
use MIME::Base64;
use Digest::SHA1  qw(sha1_hex sha1_base64);
use URI::Escape;

my $user_input = 'cst.feng@gmail.com';
my $servertime;
my $nonce;
my $username = encode_base64(uri_escape($user_input));
my $ua = LWP::UserAgent->new;
my $res = $ua->get("http://login.sina.com.cn/sso/prelogin.php?entry=cnmail&callback=sinaSSOController.preloginCallBack&su=$username&client=ssologin.js(v1.3.22)",Host=>'login.sina.com.cn',Referer=>'http://mail.sina.com.cn/');
my $response =  $res->as_string();
if ($response =~ /"servertime":(\d+),.*"nonce":"(.{6})"/)
{
    $servertime = $1;
    $nonce = $2; 
}
print "\n$servertime\n$nonce\n";
