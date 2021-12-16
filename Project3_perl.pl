#!/usr/bin/perl

#Strategy 1
$seq="AGCTCATCGATGCTATGCAATCGTA";

@sequence = split("",$seq);
print "The sequence is:@sequence\n";

for ($i=0; $i<=scalar(@sequence); $i++)
{
  my @nuc = @sequence;
  $position_A = int(rand(@nuc));
  $position_B = int(rand(@nuc));
  @nuc[$position_A,$position_B] = @nuc[$position_B,$position_A];
  $gene = join("",@nuc);
  print "Shuffling between index ".$position_A." and ".$position_B,"\n";
  print $gene, "\n";
}

#Strategy 2
$DNA_seq = "ACTGAAGCTTACGGTATGC";
@DNA = split('',$DNA_seq);
print "DNA sequence after splitting:";
print @DNA, "\n";

while ($i<=@DNA)
{
  my @nucleotide= @DNA;

  $position_a = int(rand(@nucleotide));
  @nucleotide_2 = splice(@nucleotide,$position_a,1);
  print "The random position is: $position_a\n";
  push(@nucleotide,@nucleotide_2);
  print "The new shuffled array is: @nucleotide\n";
  print "\n";
  $i = $i + 1;
}
