#!/usr/bin/perl

use strict;
use warnings;
use DBI;
use Config::Properties;

open(my $dbfh, '<', 'db.properties') or die $!;
my $properties = Config::Properties->new();
$properties->load($dbfh);
my $dbName = $properties->getProperty('database.name');
my $dbUser = $properties->getProperty('database.user');
my $dbPwd = $properties->getProperty('database.pwd');
my $dbh = DBI->connect($dbName,$dbUser,$dbPwd);

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