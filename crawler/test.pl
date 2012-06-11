#!/usr/bin/perl

use LWP::UserAgent;
use HTTP::Cookies;
use HTTP::Headers;
 
my $ua = new LWP::UserAgent(keep_alive => 1);
$ua->timeout(5);
$ua->agent('Mozilla/4.0');
$ua->cookie_jar(HTTP::Cookies->new(file=>'getsina.cookies',autosave=>1));
 
#my $res = $ua->post('http://login.sina.com.cn/sso/login.php?client=ssologin.js(v1.3.11)',
my $res = $ua->post('http://login.sina.com.cn',
    [ 
        callback => 'parent.sinaSSOController.loginCallBack',
        encoding => 'UTF-8',
        entry => 'freemail',
        from => '',
        gateway => '1',
        nonce => '4F69KK',
        prelt => '139',
        pwencode => 'wsse',
        returntype => 'IFRAME',
        savestate => '0',
        servertime => '1337312385',
        service => 'sso',
        setdomain => '1',
        sp => sinaSSOEncoder.hex_sha1('' + sinaSSOEncoder.hex_sha1(sinaSSOEncoder.hex_sha1($password)) + sinaSSOController.servertime + sinaSSOController.nonce),
        su => sinaSSOEncoder.base64.encode(encodeURIComponent($username)),
        useticket => '0',
    ]);
=pod
    [
        service => 'miniblog',
        client => 'ssologin.js(v1.3.11)',
        entry => 'miniblog',
        encoding => 'utf-8',
        gateway => '1',
        savestate => '7',
        username => 'cst.feng@gmail.com',
        password => '#fuckyou1',
        from => '',
        useticket => '0',
        url => 'http://t.sina.com.cn/ajaxlogin.php?framelogin=1&callback=parent.sinaSSOController.feedBackUrlCallBack',
        returntype => 'META',
    ],);
=cut
if (!$res->is_success) {
    print STDERR $res->status_line, "\n";
}
else
{
    die $res->status_line;
}
