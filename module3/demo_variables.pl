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

my $cardnumlength = 12;
my $sec_code_length = 3;

#my $total_length;
{
	my $total_length = $cardnumlength + $sec_code_length;
	print("Total # of characters to be masked is $total_length \n");
}

print("Total # of characters to be masked is $total_length \n");
print("First card is of type: $card1");