# Demonstrate Perl operators.
#!/usr/bin/perl
use strict;
use warnings;

print 5 + 5 , "\n";
print 5 * 5, "\n";
print 5/5, "\n";

print 5 + 5/(5 *5), "\n";

my $var1 = 1;
my $var2 = 0;

print "logical AND ", $var1 && $var2, "\n";
print "logical  OR ", $var1 || $var2, "\n";
print "logical  NOT ", !$var2, "\n";

