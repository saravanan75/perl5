# Demonstrate the given..when
#!/usr/bin/perl

use strict;
use warnings;

my $dirname = <STDIN>;
chomp($dirname);
print("Navigating the directory $dirname \n");
opendir(DIR, $dirname);

while(my $files = readdir(DIR)) {
	if((substr $files, -4) eq ".log") {
		print "Opening file $files\n";
		open(my $FH, '<', $files);  #Demonstrate that error is not displayed until we read from the file handle
		print "Closing File $files \n";
		close($FH);
	}
	#print(substr $files, -4);
}




