# Demonstrate the if, if-else, if-elseif. 
#!/usr/bin/perl
use strict;
use warnings;

my @cards = ("Visa", "Master", "Amex", "Discover", "Diners");

my $count  = @cards;

if ($count == 4) {
	print "Four major credit cards will be checked in our log files";
} elsif($count == 5) {
	print "Five credit cards will be checked in our log files";
}else {
	print "Credit card numbers unknown";
}

