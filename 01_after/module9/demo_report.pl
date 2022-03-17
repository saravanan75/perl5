#!/usr/bin/perl


format = 
Card: @>>>>>>>>>>>>>>>> Occurence: @0####
$name, $occurence
.

#select(STDOUT);
#$~ = OUTPUT;

my @cards = ("Amex", "Visa", "Diners", "Master", "Discover");
my @nums = ("333", "222", "111", "99", "88");

$i = 0;
foreach (@cards) {
	$name = $cards[$i];
	$occurence = $nums[$i];
	$i++;
	write;
}