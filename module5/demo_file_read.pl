# Demonstrate the given..when
#!/usr/bin/perl

use strict;
use warnings;

my $fn = 'c:\perl\logs\applog_092021.log';

open(my $fh, '<', $fn);

while(my $line = <$fh>) {
	chomp $line;
	print "$line\n";
}

close($fh);

my $dirname = <STDIN>;
chomp($dirname);
print("Navigating the directory $dirname \n");
opendir(DIR, $dirname);

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
		}
		print "Closing File $files \n";
		close($FH);
	}
	#print(substr $files, -4);
}





