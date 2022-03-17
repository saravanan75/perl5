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
		
		while(<$FH>) {
			print "$_";
			#if(($_ =~ /amex/i) || ($_ =~ /visa/i)) {
			#if(($_ !~ /amex/i) && ($_ !~ /visa/i)) {	
			 if(($_ =~ m/card[\d+]/)) {
				print("Credit card found in $fn\n");
				print $wfh "Credit Card Found in $fn\n";
			}
		}
		print "Closing File $files \n";
		close($FH);
	}
}
close($wfh);




