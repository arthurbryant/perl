#!/usr/bin/perl 

use warnings;
use strict;
use IO::File;

    my $fh = new IO::File;
    if ($fh->open("< file")) {
        print <$fh>;
        $fh->close;
    }

    $fh = new IO::File "> file";
    if (defined $fh) {
        print $fh "bar\n";
        $fh->close;
    }

    $fh = new IO::File "file", "r";
    if (defined $fh) {
        print <$fh>;
        undef $fh;       # automatically closes the file
    }

    $fh = new IO::File "file", O_WRONLY|O_APPEND;
    if (defined $fh) {
        print $fh "corge\n";

        my $pos = $fh->getpos;
        $fh->setpos($pos);

        undef $fh;       # automatically closes the file
    }

    autoflush STDOUT 1;
