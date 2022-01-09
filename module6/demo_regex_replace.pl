#my %re_cc = (
 #       'American Express'  => qr/^3[47][0-9]{13}$/,
  #      'Discover'          => qr/^6(?:011|5[0-9]{2})[0-9]{12}$/,
  #     'MasterCard'        => qr/^(?:5[1-5][0-9]{2}|222[1-9]|22[3-9][0-9]|2[3-6][0-9]{2}|27[01][0-9]|2720)[0-9]{12}$/,
   #    'Visa'              => qr/^4[0-9]{12}(?:[0-9]{3})?$/
#);
# 
# Demonstrate the given..when
#!/usr/bin/perl

use strict;
use warnings;


my $visa =  '4[0-9]{12}(?:[0-9]{3})?$';
my $amex = '3[47][0-9]{13}$';

my $dirname = 'c:\perl\logs\\';
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
		open(my $FH, '+<', $fn) or die $!;
		
		my $linenum = 1;
		my $pos = tell($FH);
		while(<$FH>) {
			print("Current position is $pos \n");
			print $_;
			if(($_ =~ m/$amex/) ||
                ($_ =~ m/$visa/))	{
					$_ =~ s/(\d+)(?=\d{4})/'*' x length($&)/e;
					print("replaced line is $_ \n");
					print("$& found at $linenum \n");
					print $wfh "$& Found in $fn at line $linenum\n";
					#seek($FH, 0, 0);
					#print $FH $_;
				seek($FH, $pos,0);
				print $FH $_;
			}
			$pos = tell($FH);
			$linenum++;
		}
		
		print "Closing File $files \n";
		close($FH);
	}
	#print(substr $files, -4);
}
close($wfh);




