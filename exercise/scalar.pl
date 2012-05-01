#!/usr/bin/perl

=pod
my @array1 = qw(one two);
my @array2 = qw(three four five);

# implicit scalar context (caused by the + operator)
print @array1 + @array2, "\n";
#
# # explicit scalar context
print scalar @array1 + scalar @array2, "\n";
=cut
my ($one, $two, $three) = (1, 2, 10);
print scalar ($one, $two, $three), "\n";
my @more = ((1, 2, 40), (1));
print $more[0], $more[1], "\n";
print "@more", "\n";
print scalar ((1, 2, "fuck")), "\n\n";
print scalar @more, "\n\n";

my @list1 = (1, 2, 3, 4);
my @list2 = ((1, 2, 3, 4), (2));
if(@list1 == @list2)
{
    print "equal\n";
}
else
{
    print "not equal\n";
}
=pod
my $line = <>;
print $line;

my @paragraph = <>;
print @paragraph;

print "\n\n";
my @lines = scalar <>;
print @lines;
=cut

my @time = localtime();
print "@time", "\n";

print scalar localtime(), "\n";

my @list = (1, 'hello', 1.3);
print "@list", "\n";
