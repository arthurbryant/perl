#!/usr/bin/perl
use strict;
use warnings;

use HTTP::Cookies;
use LWP::UserAgent;
use MIME::Base64; 
use URI::Escape;
use Encode;
use Digest::SHA1 'sha1_hex';
use Time::Local;
use Time::localtime;
use Getopt::Long;

use DBI;

#get user input
#my $username_input = "tastemyblade1234\@sina.com";#$ARGV[1];
my $username_input = "mixitestonly\@sina.cn";#$ARGV[1];
#my $password_input = "asdf1234";#$ARGV[3];
my $password_input = "beyond";#$ARGV[3];

#set my agent
my $ua;
my $cookie_jar  = HTTP::Cookies->new(
  file        => "./acookies.lwp",
  autosave    => 1,
  );
$ua = LWP::UserAgent->new(keep_alive=>1);
my $cookies = $ua->cookie_jar($cookie_jar);
$ua->agent('Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/535.19 (KHTML, like Gecko) Chrome/18.0.1025.168 Safari/535.19');

#get servertime and nonce
my $servertime;
my $nonce;
my $username = encode_base64(uri_escape($username_input));
my $res = $ua ->get("http://login.sina.com.cn/sso/prelogin.php?entry=cnmail&callback=sinaSSOController.preloginCallBack&su=$username&client=ssologin.js(v1.3.22)",Host=>'login.sina.com.cn',Referer=>'http://mail.sina.com.cn/');
my $response =  $res -> as_string();
if ($response =~ /"servertime":(\d+),.*"nonce":"(.{6})"/){
    $servertime = $1;
    $nonce = $2; 
}

#login
#set the url and post info
my $url         = "http://login.sina.com.cn/sso/login.php?client=ssologin.js(v1.3.22)";
#encode email address and password
my $password = sha1_hex(sha1_hex(sha1_hex($password_input)).$servertime.$nonce);
my $input = [
              Host => 'login.sina.com.cn',
              Referer=>'http://mail.sina.com.cn/',
              callback => 'parent.sinaSSOController.loginCallBack',
              encoding => "UTF-8",
              entry => "freemail",
              from => '',
              gateway => 1,
              nonce => $nonce,
              prelt => 64,
              pwencode => "wsse",
              returntype => "IFRAME",
              savestate => 0,
              servertime => $servertime,
              service => "sso",
              setdomain => 1,
              su => $username,
              sp => $password,
              usetickel => 0
            ];

#send the post request
$res = $ua->post( $url,$input);

#check if get the wrong password
if ($res->content() =~ /"retcode":"(\d*)","reason":"(.*)"/)
{
	if ($1 != 0){
    my $reason = $2;
    $reason =~ s/\\u([0-9a-fA-F]{4})/pack("U",hex($1))/eg;  
    $reason = encode( "utf8", $reason ); 
    print "$reason, $1\n";
}
}
else{
    print "Please wait. Reading the mail box....\n";
	print $res->content();
    }
#go to the mail list page
my $m_code;
$res = $ua-> get("http://mail.sina.com.cn/");
if ($res->request()->url =~ /http:\/\/(.{2})./){
  $m_code = $1;
}
$res = $ua -> get("http://$m_code.mail.sina.com.cn/basic/");
open FILE, "> sina.com" or die "can not create sina.html";
print FILE $res->content();
