#!/usr/bin/perl
use strict; use warnings;

my ($x, $y, $z) = (1, 2, 3);
print "x=$x y=$y z=$z\n";

($x, $y) = ($y, $x);
print "x=$x y=$y\n";

my ($p, $q, $r) = (1, 2, 3, 4, 5);
print "p=$p q=$q r=$r\n";

my ($a, $b, $c) = (1, 2);
print "c=$c\n";
print length($c), "\n";
print $a + $c, "\n";

my @animals = ('cat', 'dog', 'pig');
print "1st animal in array is: $animals[0]\n";
print "2nd animal in array is: $animals[1]\n";
print "Entire animals array contains: @animals\n";

push @animals, "fox";
my $length = @animals;
print "The array now contains $length elements\n";

my ($first, $second) = @animals;
print "First two animals: $first $second\n";
my @animals2 = @animals;
@animals = ();
print "Animals array now contains: @animals\n";
print "Animals2 array still contains @animals2\n";

@animals = ('cat', 'dog', 'pig');
print "Animal at array position 1.2 is $animals[1.2]\n";
print "Animal at array position 1.7 is $animals[1.7]\n";
print "Animal at array position -1 is $animals[-1]\n";
print "array length = ", scalar(@animals), "\n";

print "Animal at array position 'foobar' is ", $animals["foobar"], "\n";

my @gene_names = qw(unc-10 cyc-1 act-1 let-7 dyf-2);
my $joined_string = join(", ", @gene_names);
print "$joined_string\n";

my $dna = "aaaaGAATTCttttttGAATTCggggggg";
my $EcoRI = "GAATTC";
my @digest = split($EcoRI, $dna);
print "@digest\n";

my @dna = split("", $dna);
print "@dna\n";

my @list = qw( c b a C B A a b c 3 2 1);
my @sorted_list = sort @list;
print "default: @sorted_list\n";

