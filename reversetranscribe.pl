#store DNA in a variable
$RNA = 'acgggaggacgggaaauuacuacggcauuagc';

print 'Here is the original RNA strand',"\n";
print $RNA,"\n";

#replace all T's with U's
$DNA = $RNA;
$RNA =~ s/U/T/g;
#for lowercase
$RNA =~ s/u/t/g;

print 'Here is the DNA',"\n";
print $DNA,"\n";
exit;
