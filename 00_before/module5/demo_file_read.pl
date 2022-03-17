# Demonstrate file read
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
		open(my $FH, '<', $fn);
		
    	print "Closing File $files \n";
		close($FH);
	}
}