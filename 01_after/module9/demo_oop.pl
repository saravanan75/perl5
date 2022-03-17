#!/usr/bin/perl
use strict;
use warnings;

use card;
use chipcard;

my $visa = new card("Visa", 16);
my $amex = new chipcard("Amex", 15);
print $visa ->to_string();
print $amex->to_string();