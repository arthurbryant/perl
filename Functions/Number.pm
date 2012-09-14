package Functions::Number;

use warnings;
use strict;

use Exporter;
use vars qw{@ISA @EXPORT_OK};
@ISA = qw(Exporter);
@EXPORT_OK = qw{random_num};

# Use to create random integers. 
# Usage: ./random_num.pl numbers end_range 
# Author:zhangfeng  cst.feng@gmail.com  2012-07-09
sub random_num
{
    if(@_ < 2)
    {
    	die "Usage: $0 numbers end_ranage";
    }
    my ($numbers, $end) = @_;
    my @array;
    while($numbers-- > 0)
    {
    	my $rand_num = int(rand $end);
		print $rand_num, "\n";
    	push @array, $rand_num;
    }

	return @array;
}

1;
