# Demonstrate the until and do..until loop. 
#!/usr/bin/perl
use strict;
use warnings;

my @cards = ("Visa", "Master", "Amex", "Discover");
my $cnt = 0;
print("===========until loop ==========\n");
until($cnt > $#cards){
		print($cards[$cnt], "\n"); 
		$cnt++;
}

print("The value of counter at the end of the until loop is $cnt \n");
print("===========do..until loop ========== \n");
do {
	    print("This loop is executed once ", "\n");
		print($cards[$cnt], "\n"); 
		$cnt++;
}until($cnt > $#cards) ;

$cnt = 0;
my @extracards = ("Visa", "Diners", "Master", "Amex", "Discover");
print("===========until loop with next========== $cnt\n");
until($cnt > $#extracards) {
		 if($extracards[$cnt] eq 'Diners'){
			 $cnt++;
			 next;
		 }
		print($extracards[$cnt], "\n"); 
		$cnt++;
}

$cnt = 0;
print("===========until loop with last========== $cnt\n");
until($cnt > $#extracards) {
		 if($extracards[$cnt] eq 'Diners'){
			 $cnt++;
			 last;
		 }
		print($extracards[$cnt], "\n"); 
		$cnt++;
}