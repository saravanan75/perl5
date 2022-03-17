#!/usr/bin/perl  -T

use strict;
use warnings;

my $input;
if($ARGV[0] =~  /^(?!.*[|$%;]).*/){
	$input = $ARGV[0];
}

print "Input is $input";
open (my $FH,  $input) or die $!;

while (<$FH>) {
	print $_;
}

close($FH);