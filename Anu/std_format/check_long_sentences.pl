#!/usr/bin/perl

while($in = <STDIN>){
@wrds = split(/ /,$in);
if($#wrds > 250) { 
	print "ERROR \n";
	print "..... ...........................\n";
	print "Sentence has MORE THAN 250 WORDS in it.\n";
	print "Stanford Parser which is part of \n";
        print "anusaraaka system can not handle\n";
        print "this big sentences. \n";
        print "Please split the sentence into smaller\n";
        print "sentences, and RERUN. \n";
	print "..... ...........................\n";
        print "The LONG sentence is:\n";
	print "..... ...........................\n";
	print $in;
	print "..... ...........................\n\n";
        print "PLEASE SPLIT THE SENTENCE INTO SMALLER \n";
        print "SENTENCES, AND RERUN. \n";
	print "..... ...........................\n\n";
	print "If you continue, results will not be correct!\n";
}
}
