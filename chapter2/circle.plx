#!/usr/bin/perl

use Math::Trig;

#$r = 12.5;
$r = <stdin>;
if($r < 0)
{
	print 0;    
}
else
{
	print 2*$r*pi, "\n";
}
