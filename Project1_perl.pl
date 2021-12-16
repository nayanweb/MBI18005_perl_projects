use strict; use warnings;

my $s1= "Hello";
my $s2= "World\n";
my $s3= $s1 . " " . $s2;
print $s3;

if    ($s1 eq $s2) {print "same string\n"}
elsif ($s1 gt $s2) {print "$s1 is greater than $s2\n"}
elsif ($s1 lt $s2) {print "$s1 is less than $s2\n"}

print ord("A"), "\n";
print chr(66), "\n";


my $sequence = "AACTAGCGGAATTCCGACCGT";
if ($sequence =~ m/GAATTC/) {print "EcoRI site found\n"}
else {print "no EcoRI site found\n"}

$sequence =~ s/GAATTC/gaattc/;
print "$sequence\n";

$sequence =~ s/A/adenine/;
print "$sequence\n";
$sequence =~ s/C//;
print "$sequence\n";

$sequence =~ s/C//g;

my $protein = "MVGGKKKTKICDKVSHEEDRISQLPEPLISEILFHLSTKDLWQSVPGLD";
print "Protein contains proline\n" if ($protein =~ m/p/i);

my $input = "ACNGTARGCCTCACACQ";
die "non-DNA character in input\n" if ($input =~ m/[efijlopqxz]/i);
print "We never get here\n";


my $text = "these are letters: abcdef, and these are numbers, 123456";
$text =~ tr/a/b/;
$text =~ tr/bs/at/;
$text =~ tr/123/321/;
$text =~ tr/abc/ABC/;
$text =~ tr/ABC/X/;
$text =~ tr/d/DE/;

$text =~ tr [abcdefgh] [hgfedcba];

my $sequence2 = "AACTAGCGGAATTCCGACCGT";
my $g_count = ($sequence =~ tr/G/G/);
print "The letter G occurs $g_count times in $sequence\n";

