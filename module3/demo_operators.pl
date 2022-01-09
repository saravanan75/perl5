# Demonstrate printing multiple statements in a single line just by separating them in comma. 

#!/usr/bin/perl
use strict;
use warnings;

print 5 + 5 , "\n";
print 5 * 5, "\n";
print 5/5, "\n";

print 5 + 5 / 5 * 5, "\n";  # 5 + ((5/5) * 5)