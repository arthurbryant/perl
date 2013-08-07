#!/usr/bin/perl
use strict;
use warnings;

use Cache::Memcached;
use Data::Dumper;

my $key = "key1";
my $value = "value";
my $expired = 10;
my $memcached = Cache::Memcached->new({
    servers => ["127.0.0.1:4444"],
    });
$memcached->add($key, $value, $expired);
print $memcached->get($key), "\n";
sleep(8);
$value = "middle";
$memcached->replace($key, $value);
print $memcached->get($key), "\n";

$value = "changed";
$memcached->replace($key, $value);
my $key2 = "key2";
$value = "changed2";
$memcached->set($key2, $value, $expired);
my @result = $memcached->get_multi($key, $key2);
warn Dumper @result;
