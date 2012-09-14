#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-17

use warnings;
use strict;

use Template;
my $tt = Template->new;
#html
#起到html escape的作用
my $vars = {
  var => '<font color=red>xiaosheng</font>',
};
my $template_str = '
[% var | html %]
';
$tt->process(\$template_str, $vars) || die $tt->error(), "\n";

#&lt;font color=red&gt;xiaosheng&lt;/font&gt;

#format
#格式化输出
my $vars = {
    var => '100.345',
};
my $template_str = '
[% var | format("%.02f")%]
';
$tt->process(\$template_str, $vars) || die $tt->error(), "\n";

