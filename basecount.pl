#this program count the number and type of bases in a sequence

#ask user for folename
print "Base Counter\n";
print "What file do you want to count?\n";

#get filenale
$dnafilename = <STDIN>;

#open file with error message on failure
unless ( open(DNAFILE, $dnafilename))
{
	print "Cannot open file \"$dnafilename\"\n";
	exit;
}

#read in the data
@dna = <DNAFILE>;
#close the file
close DNAFILE;

#combine all data into a single string for easier and more accurate searching
$dna = join( '', @dna);
#remove white space
$dna =~ s/\s//g;

#explode the string into a variable with one base per element
@dna = split( '', $dna);

#initialize the counting variables
$countA=0;
$countC=0;
$countG=0;
$countT=0;
$errors=0;

#being counting the bases element by element
foreach $base(@dna) {

	if ($base eq 'A'){++$countA;}
	elsif ($base eq 'C'){++$countC;}
	elsif ($base eq 'G'){++$countG;}
	elsif ($base eq 'T'){++$countT;}
	else{ print"!!!!! Error - this base isn't recognized: $base !!!!!!\n"; ++$errors;}
}

$total = $countA+$countC+$countG+$countT;

#print the results
print "There are a total of $total bases\n";
print "A = $countA\n";
print "C = $countC\n";
print "G = $countG\n";
print "T = $countT\n";
print "There were a total of $errors errors\n";

exit;
