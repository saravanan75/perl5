#!/usr/bin/perl
package card;

use strict;
use warnings;

sub new {
	my $class = shift;
	my $self = {
			cardname => shift,
			cardlength => shift
	};
	bless $self, $class;
	return $self;
}

sub to_string{
	my $self = shift;
	return " Card Name is $self->{cardname}  and card length is $self->{cardlength}\n";
}
1;