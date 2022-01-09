# Demonstrate the warning when a variable is defined and not used in the program. 
#You can overcome this using "use strict"
# Next error is overcome by prefixing the variable with "my" keyword.
#!/usr/bin/perl
use strict;
use warnings;

my $card1 = "Visa";
my $card2 = "Master";
my $card3 = "Amex";
my $card4 = "Discover";

$/ = 'a';
my $cardnumlength = 12;
my $sec_code_length = 3;

print($card1 . $card2, "\n");
print($card1 x 4, "\n");
print(chomp($card1));