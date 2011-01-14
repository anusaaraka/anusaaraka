undef $/;
$text=<STDIN>;
@lines=split(/\n/,$text);

open(DIR,"< ../tmp/$ARGV[0]_tmp/dir_names.txt") || die "Can't open file ../tmp/$ARGV[0]_tmp/dir_names.txt\n";
$dir=<DIR>;
@dir_names=split(/\n/,$dir);	


for $i (1 .. $#lines){
 @words = split(/\s+/,$lines[$i]);
 open(CAT,"> ../tmp/$ARGV[0]_tmp/$dir_names[$i]/cat1.dat")|| die "Can't open file ../tmp/$ARGV[0]_tmp/$dir_names[$i]/cat1.dat\n";

 print CAT "(deffacts cat_info\n";
 $k=1;
 for $j (0 .. $#words){
  if(($words[$j] !~ /\^\.\<sent\>/) &&($words[$j] !~ /\^\,\<cm\>/)&&($words[$j] !~ /\^\:\<sent\>/)&&($words[$j] !~ /\^\'\<apos\>/) && ($words[$j] !~ /^\"$/)){	

	@word_analysis=split(/\//,$words[$j]);
	for $k (1 .. $#word_analysis){
		$word_analysis





	if($words[$j] =~ /\^\*/){$coarse_tag="Unknown";print CAT "(id-cat $k $coarse_tag)\n";print CAT "(id-cat_coarse $k $coarse_tag)\n";$k++}
	if($words[$j] =~ /\^([^<]*)<([^>]*)>(.*)\$$/){
			$tag=$2;
			$rest_tag=$3;
			if($tag eq "prn"){ $coarse_tag="pronoun";print CAT "(id-cat $k <$tag>$rest_tag)\n";print CAT "(id-cat_coarse $k $coarse_tag)\n";}
			elsif($tag =~ /vb/) { $coarse_tag="verb";print CAT "(id-cat $k <$tag>$rest_tag)\n";print CAT "(id-cat_coarse $k $coarse_tag)\n";}
			elsif($tag eq "vaux"){ $coarse_tag="modular";print CAT "(id-cat $k <$tag>$rest_tag)\n";print CAT "(id-cat_coarse $k $coarse_tag)\n";}
			elsif($tag eq "pr"){ $coarse_tag="preposition";print CAT "(id-cat $k <$tag>$rest_tag)\n";print CAT "(id-cat_coarse $k $coarse_tag)\n";}
			elsif($tag eq "num"){ $coarse_tag="number";print CAT "(id-cat $k <$tag>$rest_tag)\n";print CAT "(id-cat_coarse $k $coarse_tag)\n";}
			elsif(($tag eq "np") ||($tag eq "n")){ $coarse_tag="noun";print CAT "(id-cat $k <$tag>$rest_tag)\n";print CAT "(id-cat_coarse $k $coarse_tag)\n";}
			elsif($tag eq "adj"){ $coarse_tag="adjective";print CAT "(id-cat $k <$tag>$rest_tag)\n";print CAT "(id-cat_coarse $k $coarse_tag)\n";}
			elsif(($tag eq "adv") || ($tag eq "preadv")){ $coarse_tag="adverb";print CAT "(id-cat $k <$tag>$rest_tag)\n";print CAT "(id-cat_coarse $k $coarse_tag)\n";}
			elsif(($tag eq "det") || ($tag eq "predet")){ $coarse_tag="determiner";print CAT "(id-cat $k <$tag>$rest_tag)\n";print CAT "(id-cat_coarse $k $coarse_tag)\n";}
			elsif($tag eq "ij"){ $coarse_tag="interjection";print CAT "(id-cat $k <$tag>$rest_tag)\n";print CAT "(id-cat_coarse $k $coarse_tag)\n";}
			elsif($tag eq "cnj"){ $coarse_tag="conjuction";print CAT "(id-cat $k <$tag>$rest_tag)\n";print CAT "(id-cat_coarse $k $coarse_tag)\n";}
			elsif($tag eq "cnjcoo"){ $coarse_tag="conjuction";print CAT "(id-cat $k <$tag>$rest_tag)\n";print CAT "(id-cat_coarse $k $coarse_tag)\n";}
			$k++;
	}
  }
 }
 print CAT ")\n";
 close(CAT);
}
