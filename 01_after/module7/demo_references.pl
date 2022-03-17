#!/usr/bin/perl
use strict;
use warnings;

my $card = "visa";
my $card_ref = \$card;

print "variable $card \n";
print "Reference $card_ref \n";
print "DeReference $$card_ref \n";

my @cards = ('visa','amex','master');
my $cards_ref = \@cards;

print "Array Reference $cards_ref \n";
print "Array Dereference @$cards_ref \n";

my @cards2 = ('diners','discover','paypal');
my $cards2_ref = \@cards2;

my @c1 = (@cards, @cards2);
print "Array built with variables $c1[3] \n";	

my @c = ($cards_ref, $cards2_ref);
print "Array built with references $c[1]->[1] \n";	

my @a =  ( ['visa','amex','master'],
					['diners','discover','paypal']);
				
print "Anonymous Array reference $a[1][1] \n";		

my $cardhash = {
	"card1" => "Visa",
	"card2" => "Amex",
	"card3" => "Master"
};

print "Value of card 1 from the hash $cardhash->{card1} \n";
my $cardsr = "visa";
$$cardsr = "amex";

print "Symbolic references $$cardsr \n";
#print $visa;