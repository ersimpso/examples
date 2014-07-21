#this program searches a string for a user defined motif

#ask user for folename
print "Motif Finder\n";
print "What file do you want to search?\n";

#get filenale
$proteinfilename = <STDIN>;

#open file with error message on failure
unless ( open(PROTEINFILE, $proteinfilename))
{
	print "Cannot open file \"$proteinfilename\"\n";
	exit;
}

#read in the data
@protein = <PROTEINFILE>;
#close the file
close PROTEINFILE;

#combine all data into a single string for easier and more accurate searching
$protein = join( '', @protein);
#remove white space
$protein =~ s/\s//g;

do
{
	#get motif from user
	print "Enter a motif to search for, or nothing to quit:\n";
	$motif = <STDIN>;
	#remove new line at enter
	chomp $motif;

	#perform search
	if ($protein =~ /$motif/)
	{
		print "The motif is present\n";
	}
	else
	{
		print "Motif not found.\n"; 
	}
#end do loop on empty user input
} until ($motif =~ /^\s*$/);

exit;
