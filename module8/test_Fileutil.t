use strict;
use warnings;
use 5.010;
use Fileutil;
 
use Test::Simple tests => 2;
 Fileutil::log("test");
ok( Fileutil::log("test") eq "Hello PS test\n");
ok(Fileutil::isamexpresent("This line contains amex credit card data amex 345656565658944") == 1);
