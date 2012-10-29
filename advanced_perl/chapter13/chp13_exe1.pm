#!/usr/bin/perl
#
# Author: feng.zhang   Email: feng.zhang@mixi.co.jp  2012-10-29
#

use strict;
use warnings;

{
	package Animal;
	use File::Temp qw(tempfile);

	our %REG;	
	sub speak {
		my $class = shift;
		print "a $class goes ", $class->sound, "\n";
	}
	sub named {
		my $class = shift;
		my $name = shift;
		my $self = { Name => $name, Color => $class->default_color };
		my ($fh, $filename) = tempfile();
		$self->{Temp_fh} = $fh;
		$self->{Temp_filename} = $filename;
		bless $self, $class;
		$REG{$self} = $self;
	}
	sub name {
		my $either= shift;
		ref $either
			? $either->{Name}
			: "an unnamed $either";
	}
	sub set_name {
		my $class = shift;
		$class->{Name} = shift;
	}
	sub default_color { "brown" }
	sub color {
		my $either = shift;
		ref $either
			? $either->{Color}
			: "an uncolored $either"
	}
	sub set_color {
		my $self = shift;
		$self->{Color} = shift;
	}
	sub eat {
		my $either = shift;
		my $food = shift;
		print $either->{Name}, " eats ", $food, ".\n";
	}
	sub registered {
		return map { 'a ' . ref($_) . ' named ' . $_->{Name} } values %REG;
	}
	sub DESTROY {
		my $self = shift;
		my $fh = $self->{Temp_fh};
		print "destory temp_filehandler ", $self->{Temp_fh}, "\n";
		close $fh;
		print "destory tempfile ", $self->{Temp_filename}, "\n";
		unlink $self->{Temp_filename};
		print '[', "$self->{Name}",  " has died].\n";
	}
}
{ 	
	package Horse;
	our @ISA = qw(Animal);
	sub sound { "neigh" }
	sub DESTROY {
		my $self = shift;
		$self->SUPER::DESTROY;
		print "[", $self->{Name}, " has gone!\n";
	}
}
{
	package RaceHorse;
	our @ISA = qw(Horse);
	our %DBM;
	sub named {
		my $self = shift->SUPER::named(@_);
		$DBM->{$self->{Name}} = map ("$self->{$_} " for qw(wins, places)) || '0 0 0 0';
		$self->{$_} = 0 for qw(wins places shows losses);
		$self;
	}
	sub win { shift->{wins}++; }
	sub place { shift->{places}++; }
	sub show { shift->{shows}++; }
	sub standings {
		my $self = shift;
		join ', ', map "$self->{$_} $_", qw(wins places shows losses);
	}
}
print "Start of program!\n";
my @Horses = map Horse->named($_), qw(h1 h2);
my $rh = RaceHorse->named("racehorse");
print "Seen: \n", map("$_\n", Animal->registered);
print "End program.\n";
