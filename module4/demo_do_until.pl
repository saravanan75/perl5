# Demonstrate the if, if-else, if-elseif. 
#!/usr/bin/perl
use strict;
use warnings;

my @cards = ("Visa", "Master", "Amex", "Discover", "Diners");

print("Length $#cards");
my $cnt = 0;
until($cnt >= $#cards){
		print($cards[$cnt], "\n"); #$_ is an implicit iterator
		$cnt++;
}

do {
		print($cards[$cnt], "\n"); #$_ is an implicit iterator
		$cnt++;
}until($cnt > $#cards) 


