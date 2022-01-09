# Demonstrate the given..when
#!/usr/bin/perl
use feature "switch";
use strict;
use warnings;

my $card = <STDIN>;
chomp($card);
$card = uc($card);
given($card) {
	when("VISA") { print("We will check for Visa card in our logs"); }
	when('MASTER') { print("We will check for Master card in our logs"); }
	when('AMEX') { print("We will check for Amex card in our logs"); }
}
print($card);


