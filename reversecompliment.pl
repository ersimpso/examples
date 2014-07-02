#calculated the reverse compliment of a strand of DNA
$DNA = 'acgggaggacgggaaaattactacggcarragc';

print "Here is the starting DNA:\n";
print "$DNA\n";

$revcom = reverse $DNA;

$revcom =~ tr/ACGTacgt/TGCAtgca/;

print "Here is the reverse-compliment\n";
print "$revcom\n";

exit;
