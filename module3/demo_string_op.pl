# Demonstrate the warning when a variable is defined and not used in the program. 
#You can overcome this using "use strict"
# Next error is overcome by prefixing the variable with "my" keyword.
#!/usr/bin/perl
use strict;
use warnings;

my $card1 = "Visa";
$card2 = "Master";
$card3 = "Amex";
my $card4 = "Discover";

$cardnumlength = 12;
$sec_code_length = 3;

$total_length = $cardnumlength + $sec_code_length;

print("Total # of characters to be masked is $total_length \n");
print("First card is of type: $card1");