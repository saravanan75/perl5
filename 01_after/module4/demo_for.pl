# Demonstrate Perl for loop. 
#!/usr/bin/perl
use strict;
use warnings;

my @cards = ("Visa", "Master", "Amex", "Discover");

for(@cards) {
	print($_, "\n");
}

print("===========For without using Special Variable ==========\n");
for(@cards) { 
	print;
	print("\n");
}

print("===========For with iterator ==========\n");

foreach my $it (@cards) { # $i is the explicit iterator
	print($it, "\n");
}

print("===========C-style for loop ==========\n");
for(my $it=0; $it < 3; $it++) {
	print($cards[$it], "\n");
}

#print($it, "\n");