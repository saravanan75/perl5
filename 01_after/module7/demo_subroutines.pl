# Demonstrate Perl Subroutines
#!/usr/bin/perl

use strict;
use warnings;

my $dirname = 'c:\perl\logs\\';
chomp($dirname);
print("Navigating the directory $dirname \n");
opendir(DIR, $dirname);

my $outputfile = $dirname;
my $outputlog = 'output.txt';
my $writefile = $outputfile.$outputlog;

open(my $wfh, '>>', $writefile);
print $writefile;

sub print_footer{
	my $currtime = localtime();
	print "This program was run at $currtime \n";
}
my $subref = \&print_footer;
&$subref;

while(my $files = readdir(DIR)) {
	if((substr $files, -4) eq ".log") {
		print "Opening file $files\n";
		chomp($files);
		my $fn = $dirname.$files;
		print("About to read $fn \n");
		open(my $FH, '+<', $fn) or die $!;
		
		my $linenum = 1;
		my $pos = tell($FH);
		while(<$FH>) {
			print("Current position is $pos \n");
			print $_;
			if($_ =~ s/(\d+)(?=\d{4})/'*' x length($&)/e){
					print("replaced line is $_ \n");
					print("$& found at $linenum \n");
					print $wfh "$& Found in $fn at line $linenum\n";
				seek($FH, $pos,0);
				print $FH $_;
			}
			$pos = tell($FH);
			$linenum++;
		}
		print_footer();
		print "Closing File $files \n";
		close($FH);
	}
	#print(substr $files, -4);
}
close($wfh);




