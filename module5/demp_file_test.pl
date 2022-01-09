# Demonstrate the given..when
#!/usr/bin/perl

use strict;
use warnings;

my $dirname = 'c:\perl\logs\\';
chomp($dirname);
print("Navigating the directory $dirname \n");

my $outputfile = $dirname;
my $outputlog = 'output2.txt';
my $writefile = $outputfile.$outputlog;

if( -e $writefile) {
	print $writefile;
} else {
	print "File doesnt exist";
}

open(my $wfh, '<', $writefile) or die $!;  #without die the next statements are executed
print "After file open\n";
print $writefile;


close($wfh);




