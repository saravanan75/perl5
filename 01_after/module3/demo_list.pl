# Demonstrate Perl lists and arrays. 
#!/usr/bin/perl
use strict;
use warnings;
my $newcard = "Diners";

print(4, 8, 12);
print("\n");

print("Visa", "  ", "Master", "Amex", "Discover", "\n");
print("Visa", "Master", "Amex", "Discover", (12, 3));
print("\n");
print("Visa", "Master", "Amex", "Discover", $newcard, "12", "3");
print("\n");
print qw(Visa Master Amex Discover);
print("\n");
print(("Visa", "Master", "Amex", "Discover")[2]);