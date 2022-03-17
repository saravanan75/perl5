# Demonstrate the if, if-else, if-elseif. 
#!/usr/bin/perl
use strict;
use warnings;

my @cards = ("Visa", "Master", "Amex", "Discover", "Diners");

my $size = @cards;

unless($size == 4) {
	print "Four major credit cards will be checked in our log files";
} elsif($size == 5) {
	print "Five credit cards will be checked in our log files";
} else {
	print "There are more than four credit card types found";
}
