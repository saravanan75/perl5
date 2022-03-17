#!/usr/bin/perl
#Demo program to demonstrate constants and variables.
use strict;
use feature 'say';

use constant num_cards => 4;

my $card1 = "Visa";
my $cardnumlength = 12;
my $sec_code_length = 3;

print("This is a constant ", num_cards);
print "\n";
print "This variable is printed using say $card1";
print "\n";
my $total_length = 20;
{
	$total_length = $cardnumlength + $sec_code_length;
	print("Total # of characters to be masked inside the block is $total_length \n");
}
print("Total # of characters to be masked outside the block is $total_length \n");