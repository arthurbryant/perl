#!/usr/bin/perl

use Math::Trig;

$r = <stdin>;
if($r < 0)
{
	print 0;    
}
else
{
	print 2 * $r * pi, "\n";
}
