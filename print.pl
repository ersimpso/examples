#store DNA in a variable
$DNA1 = 'acgggaggacgggaaattactacggcattagc';
$DNA2 = 'atagtgccgtgagagtgatgtagta';
print 'Here are the original strands',"\n";
print $DNA1,"\n";
print $DNA2,"\n";
print 'Here are the concatenated strands',"\n";
$DNA3 = $DNA1.$DNA2;
print $DNA3,"\n";
exit;
