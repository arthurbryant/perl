#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-05-30

use warnings;
use strict;

use CGI;

print CGI->header, CGI->start_html('hello, world'), CGI->h1('hello world!'), CGI->end_html;

