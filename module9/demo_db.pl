#!/usr/bin/perl
#CPAN issues. Use CPAN command client
#user is and pwd credentials and granting privileges in the mysql workbench
# Issues with installing CPAN modules from the command line
use strict;
use warnings;
use DBI;

my $dbh = DBI->connect("DBI:mysql:pcicerun","dsharu","man3sara");

#die "failed to connect to MySQL database:DBI->errstr()" unless($dbh);

# prepare SQL statement
my $sth = $dbh->prepare("SELECT id, timstamp FROM runlog")
                   or die "prepare statement failed: $dbh->errstr()";

$sth->execute() or die "execution failed: $dbh->errstr()"; 

my($id, $ts);

# loop through each row of the result set, and print it
while(($id, $ts) = $sth->fetchrow()){
   print("$id, $ts\n");                   
}

$sth->finish();
$dbh->disconnect();
