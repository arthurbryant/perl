#!/usr/bin/perl
#  
# Author:zhangfeng  cst.feng@gmail.com  2012-07-17
package Class1;

use warnings;
use strict;
use Exporter;

use vars qw(@ISA @EXPORT_OK);
@ISA = qw(Exporter);
@EXPORT_OK = qw(new addItem);

sub new
{
	my $class = shift;
	my $self = {};
	$self->{NAME} = "arthur";
	bless($self);
	return $self;
}

sub addItem
{
	my ($obj, $item1, $item2) = @_;
	return $item1 + $item2;
}

