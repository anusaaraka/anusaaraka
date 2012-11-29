#!/usr/bin/perl -w

 #TODO: replacing the modified words in english sentence fact need to done.

while($in = <STDIN>){
	#As suggested by Chaitanya Sir Added this pattern by Roja (08-08-12)
	#ex: I should have talked to you before the inviting of John. 
	$in =~ s/ the inviting of / inviting /g; 
        #In a good number of situations in real-life , the size of objects can be neglected and they can be considered as point-like objects without much error. suggested by Chaitanya Sir Added by Shirisha Manju (24-11-12)
	$in =~ s/ a good number of / good many /g;
        #In a number of situations in real-life , the size of objects can be neglected and they can be considered as point-like objects without much error. Suggested by Chaitanya Sir , Added by Shirisha Manju (24-11-12)
	$in =~ s/ a number of / many /g;

print $in;
}

