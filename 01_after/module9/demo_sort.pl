#!/usr/bin/perl

use strict;
use warnings;

sub compare{
   if(length($a) < length($b)){
      return -1;
   }elsif(length($a) == length($b)){
      return 0;
   }else{
      return 1;                       
   }
}

my @cards = ("Amex", "Visa", "Diners", "Master", "Discover");
my @nums = ("333", "222", "111", "99", "88");

print "Alphabetically sorting cards ", sort @cards;
print "\n";
print "Alphabetically sorting numbers ", sort @nums;
print "\n";
print "Numerically sorting numbers ", sort { $a <=> $b} @nums;
print "\n";
print "Custom sorting cards ",sort compare @cards;
print "\n";
print "Reverse sorting cards ", reverse sort @cards;
print "\n";
print "Custom reverse sorting cards ", sort { $b <=> $a} @nums;
print "\n";