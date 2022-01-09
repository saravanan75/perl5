# Demonstrate the warning when a variable is defined and not used in the program. 
#You can overcome this using "use strict"
# Next error is overcome by prefixing the variable with "my" keyword.
#!/usr/bin/perl
use strict;
use warnings;

my @cards = ("Visa", "Master", "Amex", "Discover");

my $count  = @cards;

print (@cards, "\n");

print $cards[2];

print (@cards[1..3], "\n");

print ($count, $#cards);

my @sortedcards = sort @cards;

print (@sortedcards, "\n");

$cards[0] = "Diners";

print (@cards, "\n");

$cards[4] = "Visa";

print (@cards, "\n");

delete $cards[4];

print (@cards, "\n");

print(reverse(@cards), "\n");