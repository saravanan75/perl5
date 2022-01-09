# Demonstrate the next and last statement. 
#!/usr/bin/perl
use strict;
use warnings;

my @cards = ("Visa", "Master", "Amex", "Discover", "Diners");

for my $i (@cards) {
	print("checking $i \n");
	next if($i eq 'Visa');
	
	print("$i will be checked \n");
	
}
print("########## \n");
for my $i (@cards) {
	print("checking $i \n");
	last if($i eq 'Visa');
	
	print("$i will be checked \n");
	
}