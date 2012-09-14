package Singleton;

use strict;
use warnings;

sub get_instance
{
    my $self = blessed $_[0] ? shift : shift->instance;
    print $_[0], "\n";
}

1;
