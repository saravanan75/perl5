# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl Filemasker.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use strict;
use warnings;
use FileMasker;

use Test::More tests => 2;

ok( FileMasker::add(2,3) == 4 );
ok ( FileMasker::maskcarddata("Visa 4400345678677794")  == "Visa ************7794" );