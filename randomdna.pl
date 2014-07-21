#This program mutates a string of DNA using a random number generator
#the program can mutate a base into the same base it currently is

#strict automatically localizes variables
use strict;
#warnings gives more info for mistakes
use warnings;

#the string od DNA is chosen to make mutations obvious
my $size_of_set=12;
my $maximum_length=30;
my $minimum_length=15;

#seed the random number generator
#combines the current time with the current process id
srand(time|$$);

#initialize array to store dna
my @random_dna=();

#put it in a loop of 10 and watch the accumulation
print "\nGenerating random $size_of_set dna strands between $minimum_length and $maximum_length bases long:\n";

#call sub to build dna
@random_dna = make_random_dna_set($minimum_length,$maximum_length,$size_of_set);

foreach my $dna(@random_dna){
print "$dna\n";
}

exit;

#####################################################
#####################################################
#subroutines----------------------------------------#
#####################################################

#WARNING - call srand to seed the random number generator before calling functions

sub mutate{

my($dna)=@_;
my(@nucleotides)=('A','C','G','T');

#pick a random position in the dna
my($position) = randomposition($dna);

#pick a random nucleotide
my($newbase) = randomnucleotide(@nucleotides);

#insert random nucleotide into random position in dna
substr($dna,$position,1,$newbase);

return $dna;
}

####################################################
#this sub randomly selects an element from an array#

sub randomelement{
my(@array)=@_;

return $array[rand @array];
}

######################################################
###this sub randomly selects one dna nucleotide#######

sub randomnucleotide{
my(@nucleotides)=('A','C','G','T');

return randomelement(@nucleotides);
}

####################################################
#This sub randomly selects a position in a string###

sub randomposition{
my($string)=@_;

#nested built in functions operate on $string
return int rand length $string;
}

#######################################################
#This sub makes a random dna set and returns the array#

sub make_random_dna_set{

#collect arguements and declare
my($minimum_length,$maximum_length,$size_of_set)=@_;

#length of each dna fragment
my $length;

#dna fragment
my $dna;

#set of fragments
my @set;

#create the set
for (my $i=0;$i<$size_of_set;++$i){
	$length = randomlength($minimum_length,$maximum_length);
	
	#make the dna
	$dna = make_random_dna($length);
	
	#add dna to set
	push(@set,$dna);
}

return @set;
}

sub randomlength {
#collect arguements
my($minlength,$maxlength)=@_;
#calculate within interval, add one to make endpoints work, subtract min length then add it back to get right interval
return (int(rand($maxlength-$minlength+1))+$minlength);
}

sub make_random_dna{
#collect arguements
my($length)=@_;

my $dna;

for (my $i=0; $i<$length;++$i){
	$dna.= randomnucleotide();
}
return $dna;
}

