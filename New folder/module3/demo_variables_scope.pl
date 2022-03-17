#!/usr/bin/perl
#Demo program to demonstrate constants and variables.
use feature 'say';

use constant num_cards => 4;

my $card1 = "Visa";

print("This is a constant ", num_cards);
print "\n";
say "This variable is printed using say $card1";
