#!/bin/perl

use Net::MySQL;
 
my $con = Net::MySQL->new(
    hostname => 'localhost',   # Default use UNIX socket
    database => '',
    user     => 'abayomi',
    password => ''
);
 
my $stockcode = "skyebank";
my $startdate = "2013-01-01";
my $enddate = "2013-12-31";
@data = [];
# SLECT example
$con->query(q{SELECT trans_date,buyinghouse,sellinghouse,stockcode,qty,unitprice,amount FROM transaction WHERE stockcode="skyebank" AND trans_date BETWEEN "2013-01-01" AND "2013-12-31"});
my $record_set = $con->create_record_iterator;
while (my $record = $record_set->each) {
    @data = $record;
}
$con->close;

print "Data = @data[0][0]";
