# Demonstrate perl error handling
#!/usr/bin/perl

use strict;
use warnings;
use Carp;

my $dirname = <STDIN>;
chomp($dirname);
my $dirhandle;
#unless(opendir($dirhandle, $dirname)) {
#	die "Could not open directory \n";
#}
sub test1{
	warn "This message is issued using a Perl Warn \n";
}

sub test2{
	carp "This message is issued using a Perl Carp \n";
}
test1();
test2();
opendir($dirhandle, $dirname) or warn $! ;

my $outputfile = $dirname;
my $outputlog = 'output.txt';
my $writefile = $outputfile.$outputlog;

open(my $wfh, '>>', $writefile);
print $writefile, "\n";

while(my $files = readdir($dirhandle)) {
	if((substr $files, -4) eq ".log") {
		print "Opening file $files\n";
		my $fn = $dirname.$files;		
		#my $fn = $dirname."temp.txt";
		if(-e-r-s $fn) {
			print("About to read $fn \n");
		} else {
			print("File does not exist $fn \n");
		}
		
		
		open(my $FH, '<', $fn);
		
		while(my $line = <$FH>) {
			print "$line";
			if(index($line, 'card') > 0) {
				print("Credit card found\n");
				print $wfh "Credit Card Found \n";
			}
		}
		
		
		close($wfh);
		print "Closing File $files \n";
		close($FH);
	}
}

