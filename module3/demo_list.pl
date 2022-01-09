# Demonstrate the warning when a variable is defined and not used in the program. 
#You can overcome this using "use strict"
# Next error is overcome by prefixing the variable with "my" keyword.
#!/usr/bin/perl
use strict;
use warnings;
my $newcard = "Diners";

print("Visa", "Master", "Amex", "Discover");

print("Visa", "Master", "Amex", "Discover", ("12", "3"));

print("Visa", "Master", "Amex", "Discover", $newcard, "12", "3");

print(q/Visa/, q/Master/, q/Amex/);

print qw("Visa", "Master", "Amex", "Discover");

print qw(Visa, Master, Amex, Discover, \n);

print(("Visa", "Master", "Amex", "Discover")[2]);

