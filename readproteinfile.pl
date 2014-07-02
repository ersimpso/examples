#read protein sequence data from a file

#the filename of the file to be read
$proteinfilename = 'proteindata';

#open the file with filehandle PROTEINFILE
open (PROTEINFILE, $proteinfilename);

#read the data of one line in the file from the filehandle
@protein = <PROTEINFILE>;
#because an array (@) was used the whole file was read into its elements

#close the file for good practice
close PROTEINFILE;

print "Here is the protein:\n";
print "@protein\n";

exit;
