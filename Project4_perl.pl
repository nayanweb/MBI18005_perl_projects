#!/usr/bin/perl
#Project 4

open(FILE, "T. congolense haptoglobin-haemoglobin receptor in complex with haemoglobin.fasta") or die "The file cannot be opened";
@seq = <FILE>;
chomp(@seq);
$protein_sequence = join("\n", @seq);
@list = split(">", $protein_sequence);
print "\n";
foreach $i (@list)
{
  if ($i =~ /PK/)
  {
    @i = split(" ", $i);
    print @i[0];
    print "\n";
  }
}
close (FILE)