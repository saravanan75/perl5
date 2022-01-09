# Demonstrate the warning when a variable is defined and not used in the program. 
#You can overcome this using "use strict"
# Next error is overcome by prefixing the variable with "my" keyword.
#!/usr/bin/perl
use strict;
use warnings;
my %cards = (
				card1 => 'visa',
				card2 => 'master'
				);
				
		$cards{card3} = 'Amex';		
		
		my @card_array = %cards;
				
		print ($cards{card1});		
		print ($cards{card3}, "\n");	
		print(@card_array);
		$cards{card3} = 'Discover';
		print ($cards{card3}, "\n");	
		
		delete $cards{card3};
		print ($cards{card3}, "\n");	

