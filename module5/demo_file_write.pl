# Demonstrate the given..when
#!/usr/bin/perl

use strict;
use warnings;

my $dirname = <STDIN>;
chomp($dirname);
print("Navigating the directory $dirname \n");
opendir(DIR, $dirname);

my $outputfile = $dirname;
my $outputlog = 'output.txt';
my $writefile = $outputfile.$outputlog;


open(my $wfh, '>>', $writefile);
print $writefile;

while(my $files = readdir(DIR)) {
	if((substr $files, -4) eq ".log") {
		print "Opening file $files\n";
		chomp($files);
		my $fn = $dirname.$files;
		print("About to read $fn");
		open(my $FH, '<', $fn) or die $!;
		
		while(my $line = <$FH>) {
			chomp $line;
			print "$line\n";
			if(index($line, 'card') > 0) {
					print("Credit card found\n");
					print $wfh "Credit Card Found \n";
			}
		}
		print "Closing File $files \n";
		close($FH);
	}
	#print(substr $files, -4);
}
close($wfh);




