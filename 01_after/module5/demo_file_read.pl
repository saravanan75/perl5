# Demonstrate reading a file
#!/usr/bin/perl

use strict;
use warnings;

my $dirname = <STDIN>;
chomp($dirname);
print("Navigating the directory $dirname \n");
my $dir = opendir(my $dirhandle, $dirname);
print("Value of opening is $dir \n");

while(my $files = readdir($dirhandle)) {
	if((substr $files, -4) eq ".log") {
		print "Opening file $files\n";
		my $fn = $dirname.$files;
		print("About to read $fn \n");
		
		open(my $FH, '<', $fn);
		
		seek($FH, 207, 0);
		while(<$FH>) {
			print "$_", tell($FH), "\n";
		}
		
		
		
		print "Closing File $files \n";
		close($FH);
	}
}