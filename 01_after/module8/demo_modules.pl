# Demonstrate Regex pattern matching in Perl
#!/usr/bin/perl

use strict;
use warnings;
use FileMasker;
use DateTime;

my $dirname = 'c:\perl\logs\\';
chomp($dirname);
print("Navigating the directory $dirname \n");
opendir(my $dirhandle, $dirname);
my $dt = DateTime->now; 
my $currmonth = $dt->month;
print "Current month is $currmonth\n";

my $company = "Globomantics";
print "the company name before a subroutine is $company \n";
FileMasker::log("This is a test");
sub mask_card_details {
		my $FH = $_[0];
		my $linenum = 1;
		my $pos = tell($FH);
		while(<$FH>) {
			print("Current position is $pos \n");
			print "$_";
			if($_ = FileMasker::maskcarddata($_)) {
				print("replaced line is $_ \n");
				seek($FH,$pos,0);
				print $FH $_;
			}
			$pos = tell($FH);
			$linenum++;
			$company = "Carvedrock";
		}
		print "the company name inside a subroutine is $company \n";
}

sub translate_line{
	my $input = $_[0];
	$input =~ tr/[a-z]/[A-Z]/;
	return $input;
}

while(my $files = readdir($dirhandle)) {
	if((substr $files, -4) eq ".log") {
		print "Opening file $files\n";
		chomp($files);
		my $fn = $dirname.$files;
		print("About to read $fn");
		#open(my $FH, '+<', $fn) or die $!;
		my $FH = FileMasker::openfile($fn);
		mask_card_details($FH);
		print "Closing File $files \n";
		close($FH);
	}
}





