#store DNA in a variable
$DNA = 'acgggaggacgggaaattactacggcattagc';

print 'Here is the original DNA strand',"\n";
print $DNA,"\n";

#replace all T's with U's
$RNA = $DNA;
$RNA =~ s/T/U/g;
#for lowercase
$RNA =~ s/t/u/g;

print 'Here is the RNA',"\n";
print $RNA,"\n";
exit;
