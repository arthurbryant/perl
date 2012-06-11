#!/usr/bin/perl
# This program crawl sina Email and return the mail list titles of the first page.  
# Usage: ./crawler -emai xxxx -psw xxx 
# Author:zhangfeng  cst.feng@gmail.com  2012-06-04

use warnings;
use strict;
#die "Usage: ./crawler -email xxxx -psw xxx\n" if(@ARGV != 4);

use LWP::UserAgent;
my $browser = LWP::UserAgent->new;

#my $url = "http://login.sina.com.cn/sso/login.php?client=ssologin.js";
my $url = "http://login.sina.com.cn/sso/login.php?client=ssologin.js(v1.3.22)";
my $username = 'cst.feng@gmail.com';
#my $encoded_username = sinaSSOEncoder.base64.encode(encodeURIComponent($username));
my $password = '#fuckyou1';
#my $encoded_password = sinaSSOEncoder.hex_sha1("" + sinaSSOEncoder.hex_sha1(sinaSSOEncoder.hex_sha1($password)) + sinaSSOController.servertime + sinaSSOController.nonce);

my $response = $browser->post($url, 
    [ 
        callback => 'parent.sinaSSOController.loginCallBack',
        encoding => 'UTF-8',
        entry => 'freemail',
#from____
        gateway => '1',
        nonce => '4F69KK',
        prelt => '139',
        pwencode => 'wsse',
        returntype => 'IFRAME',
        savestate => '0',
        servertime => '1337312385',
        service => 'sso',
        setdomain => '1',
        sp => '',
        su => 'Y3N0LmZlbmdAZ21haWwuY29t',
#sp => "sinaSSOEncoder.hex_sha1('' + sinaSSOEncoder.hex_sha1(sinaSSOEncoder.hex_sha1($password)) + sinaSSOController.servertime + sinaSSOController.nonce)",
#        su => "sinaSSOEncoder.base64.encode(encodeURIComponent($username))",
        useticket => '0',
    ]);

if($response->is_success)
{
    print $response->content;
}
else
{
    print "Failed!";
}

