# Demonstrate Perl Hash. 
#!/usr/bin/perl
use strict;
use warnings;

my %cards = (
	card1 => "Visa",
	card2 => "Master"
	);
	
print ("Value of first element $cards{card1}");	
print("\n");

my @card_keys = keys %cards;
my @card_values = values %cards;
my $card_size = %cards;
	
print("Hash Values : ", @card_values, "\n");
print("Hash Keys : ", @card_keys, "\n");
print("Size of Hash : ", $card_size, "\n");

$cards{card3} = "Amex";
$cards{card3} = "Discover";
print ("New ELement ", $cards{card3}, "\n");	
delete $cards{card3};
print("Does this element exist? ", $cards{card3}, "\n");
