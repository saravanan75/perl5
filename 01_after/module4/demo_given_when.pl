# Demonstrate the given..when
#!/usr/bin/perl
use strict;
use warnings;
use feature "switch";
use experimental 'smartmatch';

my $card = <STDIN>;
chomp($card);
$card = lc($card);
given($card) {
	when("visa") {print("We will check for Visa card in our logs"); }
	when('master') { print("We will check for Master card in our logs"); }
	when('amex') { print("We will check for Amex card in our logs"); }
	when('discover') { print("We will check for discover card in our logs"); }
	default {print("This card will not be checked by our utility"); }
}