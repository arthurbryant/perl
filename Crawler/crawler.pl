#!/usr/bin/perl
# This program crawl sina Email and return the mail list titles of the first page.  
# Usage: ./crawler -emai xxxx -psw xxx 
# Author:zhangfeng  cst.feng@gmail.com  2012-06-04

use warnings;
use strict;

BEGIN {unshift(@INC, "..");}

use LWP::UserAgent;
use HTTP::Cookies;
use MIME::Base64;
use URI::Escape;
use Digest::SHA  qw(sha1_hex);
use Crawler::Crawler_db qw(connect_db insert_db disconnect_db);

# Get username and password.
die "Usage: ./crawler -email xxxx -psw xxx\n" if(@ARGV < 4);
my $username = $ARGV[1]; #'mixitestonly@sina.cn';
my $password = $ARGV[3]; #'beyond';

my $browser = LWP::UserAgent->new;
$browser->timeout(5);
$browser->agent('Mozilla/4.0');
$browser->cookie_jar(HTTP::Cookies->new(file => 'getsina.cookies', autosave => 1));
my $url = "http://login.sina.com.cn/sso/login.php?client=ssologin.js(v1.3.22)";
# Encode username.  
my $encoded_username = encode_base64(uri_escape($username));
print "username: $encoded_username\n";
# Get servertime and nonce.
my $servertime; 
my $nonce;
my $res = $browser->get("http://login.sina.com.cn/sso/prelogin.php?entry=cnmail&callback=sinaSSOController.preloginCallBack&su=$encoded_username&client=ssologin.js(v1.3.22)",Host=>'login.sina.com.cn',Referer=>'http://mail.sina.com.cn/');
my $response = $res->as_string();
if($response =~ /"servertime":(\d+),.*"nonce":"(.{6})"/)
{
	$servertime = $1;
    $nonce = $2; 
}
# Encode password.  
my $encoded_password = sha1_hex(sha1_hex(sha1_hex(uri_escape($password))) . $servertime . $nonce);
print "password: $encoded_password\n";
print "sertime: $servertime\nnonce: $nonce\n";
$response = $browser->post($url, 
    [ 
		Host => 'login.sina.com.cn',
		Referer => 'http://mail.sina.com.cn',
        callback => 'parent.sinaSSOController.loginCallBack',
        encoding => 'UTF-8',
        entry => 'freemail',
		from => '',
        gateway => 1,
        nonce => $nonce,
        prelt => 64,
        pwencode => 'wsse',
        returntype => 'IFRAME',
        savestate => 0,
        servertime => $servertime,
        service => 'sso',
        setdomain => 1,
        sp => $encoded_password,
        su => $encoded_username,
        useticket => 0,
    ]);
if($response->is_success)
{
	print "Code: ", $response->status_line, "\n";
}
else
{
	print "Code: ", $response->status_line, "\n";
	die "Failed to get post's response: $!";	
}
# List email titiles 
my $m_code;
$res = $browser->get("http://mail.sina.com.cn/");
if($res->request()->url =~ /http:\/\/(.{2})./)
{
	$m_code = $1;
}
$res = $browser->get("http://$m_code.mail.sina.com.cn/basic/");
my @titles;
if($res->is_success())
{
	while($res->content =~ m/basic\/readmail\.php\S+\s+title="(.*)">/g)
	{
		push @titles, $1;
	}
}
my $store_html = "mail.sina.com.cn";
open FH, "> $store_html" or die "Can not create $store_html";
print FH $res->content(); 
print "Titles: @titles\n";
# store titles into mysql.
my $dbh = connect_db();
insert_db($dbh, @titles);
# 

disconnect_db($dbh);
