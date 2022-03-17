# Demonstrate the while and do..while loop. 
#!/usr/bin/perl
use strict;
use warnings;

my @cards = ("Visa", "Master", "Amex", "Discover");
my $cnt = 0;
print("===========while loop ==========\n");
while($cnt<=$#cards){
	print($cards[$cnt], "\n"); 
	$cnt++;
}

print("The value of counter at the end of the while loop is $cnt \n");
print("===========do..while loop ========== \n");
do {
	  print("This loop is executed once ", "\n");
		print($cards[$cnt], "\n"); 
		$cnt++;
}while($cnt <= $#cards) ;

$cnt = 0;
my @extracards = ("Visa", "Diners", "Master", "Amex", "Discover");
print("===========while loop with next========== $cnt\n");
while($cnt <= $#extracards) {
	   	 if($extracards[$cnt] eq 'Diners'){
			 $cnt++;
			 next;
		 }
		print($extracards[$cnt], "\n"); 
		$cnt++;
}

$cnt = 0;
print("===========do..while loop with last========== $cnt\n");
while($cnt <= $#extracards) {
	   	 if($extracards[$cnt] eq 'Diners'){
			 $cnt++;
			 last;
		 }
		print($extracards[$cnt], "\n"); 
		$cnt++;
}