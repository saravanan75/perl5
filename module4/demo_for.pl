# Demonstrate the if, if-else, if-elseif. 
#!/usr/bin/perl
use strict;
use warnings;

my @cards = ("Visa", "Master", "Amex", "Discover", "Diners");

foreach(@cards){
		print($_, "\n"); #$_ is an implicit iterator
}

for my $i (@cards) { # $i is the explicit iterator
	print($i, "\n");
}
