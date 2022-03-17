# Demonstrate Regex pattern matching in Perl
#!/usr/bin/perl

use strict;
use warnings;


my $dirname = 'c:\perl\logs\\';
chomp($dirname);
print("Navigating the directory $dirname \n");
opendir(my $dirhandle, $dirname);

my $outputfile = $dirname;
my $outputlog = 'output.txt';
my $writefile = $outputfile.$outputlog;

open(my $wfh, '>>', $writefile);
print $writefile;

while(my $files = readdir($dirhandle)) {
	if((substr $files, -4) eq ".log") {
		print "Opening file $files\n";
		chomp($files);
		my $fn = $dirname.$files;
		print("About to read $fn");
		open(my $FH, '<', $fn) or die $!;
		
		my $linenum = 1;
		while(<$FH>) {
			print "$_";
			#if(($_ =~ /amex/i) || ($_ =~ /visa/i)) {
				if($_ =~ /\d+\s+(\w+)\s+(\d+)/) {
				print("$1 and $2 found at $linenum \n");
				print $wfh "$1 and $2 Found in $fn at line $linenum\n";
			}
			$linenum++;
		}
		print "Closing File $files \n";
		close($FH);
	}
}
close($wfh);




