#!/usr/bin/perl
package chipcard;

use strict;
use warnings;
use card;
our @ISA = qw(card);

sub to_string {
	my $self = shift;
	return " Chip Card Name is $self->{cardname}  and card length is $self->{cardlength}\n";
}