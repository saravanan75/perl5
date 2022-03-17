# Demonstrate Regex pattern matching in Perl
#!/usr/bin/perl

use strict;
use warnings;
use feature 'state';

my $dirname = 'c:\perl\logs\\';
chomp($dirname);
print("Navigating the directory $dirname \n");
opendir(my $dirhandle, $dirname);


sub print_footer{
			state $count = 1;
			my $currtime = localtime();
			print "This program was run at $currtime and printed $count times\n";
			$count++;
		}
while(my $files = readdir($dirhandle)) {
	if((substr $files, -4) eq ".log") {
		print "Opening file $files\n";
		chomp($files);
		my $fn = $dirname.$files;
		print("About to read $fn");
		open(my $FH, '+<', $fn) or die $!;

		my $linenum = 1;
		my $pos = tell($FH);
		while(<$FH>) {
			print("Current position is $pos \n");
			print "$_";
			$_ =~ tr/[a-z]/[A-Z]/;
			if($_ =~ s/(\d+)(?=\d{4})/'*' x length($1)/e) {
				print("replaced line is $_ \n");
				print("$1 found at $linenum \n");
				seek($FH,$pos,0);
				print $FH $_;
			}
			$pos = tell($FH);
			$linenum++;
		}
		print "Closing File $files \n";
		close($FH);
	}
}





