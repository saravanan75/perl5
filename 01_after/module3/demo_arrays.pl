# Demonstrate Perl lists and arrays. 
#!/usr/bin/perl
use strict;
use warnings;

my @cards = ("Visa", "Master", "Amex", "Discover");
my $var = @cards;
$cards[0] = "Diners";
$cards[4] = "Visa";
delete $cards[4];

print (@cards, "\n");
print($cards[-1], "\n");
print("Number is $var and the highest index is $#cards \n");

my @sortedcards = sort @cards;
print("Sorted Cards: ", @sortedcards, "\n");
print("Reversed Cards :", reverse(@cards), "\n");