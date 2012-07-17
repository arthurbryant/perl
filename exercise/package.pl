#!/usr/bin/perl
# 
# Author: zhangfeng cst.feng@gmail.com 2012-06-11

use strict; 
use warnings;

BEGIN
{
	print "before compile.\n";
}
&hello();
package A;
$a = 10;

package B;
print $A::a, "\n";
