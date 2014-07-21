#This program mutates a string of DNA using a random number generator
#the program can mutate a base into the same base it currently is

use strict;
use warnings;

#the string od DNA is chosen to make mutations obvious
my $DNA = 'AAAAAAAAAAAAAAAAAAAAAAAAA';
print "\nHere is the original DNA:\n$DNA\n";

# $I will be our counter variable
my $i;

my $mutant=$DNA;

#seed the random number generator
#combines the current time with the current process id
srand(time|$$);

#put it in a loop of 10 and watch the accumulation
print "\nHere are 10 successive mutations:\n\n";

for ($i=0; $i < 10; ++$i){
	$mutant = mutate($mutant);
	print "$mutant\n";
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


