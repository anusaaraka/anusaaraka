undef $/;
$text=<STDIN>;
@lines=split(/\n/,$text);

open(DIR,"< $ARGV[0]/tmp/$ARGV[1]_tmp/dir_names.txt") || die "Can't open file $ARGV[0]/tmp/$ARGV[1]_tmp/dir_names.txt\n";
$dir=<DIR>;
@dir_names=split(/\n/,$dir);	


for $i (0 .. $#lines){
 @words = split(/\s+/,$lines[$i]);
 open(MORPH,"> $ARGV[0]/tmp/$ARGV[1]_tmp/$dir_names[$i]/morph.dat")|| die "Can't open file $ARGV[0]/tmp/$ARGV[1]_tmp/$dir_names[$i]/morph.dat\n";

 print MORPH ";$lines[$i]\n";
# print MORPH "(deftemplate word-morph(slot original_word)(slot morph_word)(slot root)(slot category)(slot suffix)(slot number))\n(deffacts morph\n";

 for $j (0 .. $#words){
	$genitive=0;
	$last_genitive=0;
  if(($words[$j] !~ /^\^\.\/\.\<sent\>["']*\$$/) && ($words[$j] !~ /^\^\?\/\?\<sent\>["']*\$$/)  && ($words[$j] !~ /^\^\?\/\?\<sent\>["']*\$\^\.\/\.\<sent\>["']*\$$/) &&($words[$j] !~ /^\^\,\/\,\<cm\>["']*\$$/)&&($words[$j] !~ /^\^\:\/\:\<sent\>["']*\$$/)&&($words[$j] !~ /^\^\'\/\'\<apos\>['"]*\$$/)&&($words[$j] !~ /^\"\^\.\/\.\<sent\>\$$/)&&($words[$j] !~ /^\"$/) && ($words[$j] !~ /^\"\^\:\/\:\<sent\>\$$/) && ($words[$j] !~ /^\^\?\/\?\<sent\>\$\^\'\/\'\<apos\>\$$/)){ 
# This pattern ^?/?<sent>$^'/'<apos>$  added by Roja (09-08-11)


#for handling patterns $^5/5<num>$ where "$" is part of sentence.(The university spends $5 per student.)
# soln is remove the "$" symbol.

	if($words[$j] =~ /^\$\^/){ $words[$j] =~ s/^\$//;}


#for genitive case ^father/father<n><sg>/father<vblex><inf>/father<vblex><pres>$^'s/'s<gen>$
	if($words[$j] =~ /\'s<gen>/){$genitive=1;}
	if ($words[$j] =~ /\'<apos>\$$/){$last_genitive=1;}
	#if multiwords e.g black-board give root as black-board and analysis of "board"
	$multiword=0;
	$root_mw="";
	if ($words[$j] =~ /\-<guio>\$/){
		$multiword=1;
		@mw=split(/<guio>\$/,$words[$j]);
		foreach $mw_words(@mw){
			$mw_words =~ /^\^([^\/]+)/;
			if($root_mw eq ""){$root_mw=$1;}else{$root_mw = $root_mw."-".$1;}
		}
#		$words[$j] =~ /^\^([^\/]+)(.*)guio>\$\^([^\/]+)\/(.*)/;
#		print "$1\t$3\n";
		@word_analysis=split(/\//,$mw[$#mw]);
	}
	else{	
		$words[$j] =~ s/\$.*/\$/;
		@word_analysis=split(/\//,$words[$j]);}

	#for genitive case add "'s" in the original word
	if($genitive){
		if($multiword){$orig_word=$root_mw."'s";}
		else{$orig_word=$word_analysis[0]."'s";}
	}
	elsif($last_genitive){$orig_word=$word_analysis[0]."'";}
	else{$orig_word=$word_analysis[0];}
	$orig_word =~ s/^\^//;
	for $l (1 .. $#word_analysis){


		$number="-";$category="-";$suffix="-";$root="-";$person="-";
		if($word_analysis[$l] =~ /([^<]*)(.*)$/){

			$root_orig=$1;	$root=$1;
			
			if($multiword){$root_orig=$root_mw;$root=$root_mw;$orig_word=$root_mw;}
			elsif($root =~ /^\*/){$root=$orig_word;}
			elsif((($root eq "Prpers")||($root eq "prpers"))&& ($orig_word eq "I")){$root=$orig_word;}
			elsif(($root eq "Prpers")||($root eq "prpers")||($root eq "PRPERS")){$root=lc($orig_word);}
			else{$root=lc($1);}
			$analysis=$2;
			@tags=split(/>/,$analysis);
			foreach $tag(@tags){
				#number
				if($tag =~ /^<sg$/){$number="s";}
				if($tag =~ /^<pl$/){$number="p";}
				#category
				if($tag =~ /^<vblex$/){$category="verb";}
				if($tag =~ /^<vbdo$/){$category="verb";}
				if($tag =~ /^<vbhaver$/){$category="verb";}
				if($tag =~ /^<vbser$/){$category="verb";}
				if($tag =~ /^<vaux$/){$category="verb";}
				if($tag =~ /^<n$/){$category="noun";}
				if($tag =~ /^<adj$/){$category="adjective";}
				#if proper noun then keep the root as original.
				if($tag =~ /^<np$/){$category="PropN";$root=$root_orig;}
				if($tag =~ /^<prn$/){$category="I";}
				if($tag =~ /^<pr$/){$category="I";}
				if($tag =~ /^<num$/){$category="I";}
				if($tag =~ /^<adv$/){$category="I";}
				if($tag =~ /^<preadv$/){$category="I";}
				if($tag =~ /^<det$/){$category="I";}
				if($tag =~ /^<ij$/){$category="I";}
				if($tag =~ /^<conj$/){$category="I";}
				if($tag =~ /^<cnjcoo$/){$category="I";}
				if($tag =~ /^<cnjadv$/){$category="I";}
				if($tag =~ /^<rel$/){$category="I";}
				#person
				if($tag =~ /^<p3$/){$person="3";}
				if($tag =~ /^<apos$/){$apostophe=1;}
				#suffix
				if(($category eq "verb") &&($tag =~ /^<past$/)){$suffix="ed";}
				if(($category eq "verb") &&($tag =~ /^<pp$/)){$suffix="en";}
				if(($category eq "verb") &&($tag =~ /^<pprs$/)){$suffix="ing";}


				if(($category eq "adjective") &&($tag =~ /^<comp$/)){$suffix="er";}
				if(($category eq "adjective") &&($tag =~ /^<sup$/)){$suffix="est";}
				
				
				#for gerund case cat:verb_gerund
				if(($category eq "verb") &&($tag =~ /^<ger$/)){$suffix="ing";$category="gerund";}
				if(($category eq "verb") &&($tag =~ /^<subs$/)){$suffix="ing";}
				if(($category eq "verb") &&($person eq "3") && ($number eq "s")&&($root ne "be")){$suffix = "s";}
				if(($category eq "verb") &&($suffix eq "-")) {$suffix = 0;}
				#for noun suffix boy's, childrens'	
				if(($category eq "noun") && ($number eq "p")){$suffix = "s";}
				if(($category eq "noun") && ($genitive)){$suffix = "'s";}
				if(($multiword) && ($genitive)){$suffix = "'s";}
				if(($category eq "noun") && ($number eq "p") && ($apostophe)){$suffix = "s'";}
			
			}
                   if(($orig_word eq ";")||($orig_word eq "\"")||($orig_word eq ")")||($orig_word eq "(")||($orig_word eq ".")||($orig_word eq "?"))
                        {print MORPH "(word-morph (original_word  \"$orig_word\")(morph_word        \"$orig_word\")     (root   \"$root\")  (category       \"$category\")      (suffix \"$suffix\")(number \"$number\"))\n" }
                    else     {
			print MORPH "(word-morph (original_word  $orig_word)	(morph_word	$orig_word)	(root	$root)	(category	$category)	(suffix	$suffix)(number $number))\n" }
		}
	}
  }
 }
 print MORPH "\n";
 close(MORPH);
}
