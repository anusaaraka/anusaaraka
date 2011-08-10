#!/usr/bin/perl
#
use GDBM_File;
tie(%DICT,GDBM_File,$ARGV[0],&GDBM_WRCREAT,0644);

open(SENT,"< $ARGV[1]") || die "Can't open $ARGV[1]\n";

while(<SENT>){
#	print "(deffacts cmp_phrase_mng\n";
	chomp($_);
	$sent=$_;
	$sent =~ s/\s+,/,/g;#To remove the space between word and comma
	$sent =~ s/\s+;/;/g;#To remove the space between word and semicolon
	$sent =~ s/[^\w]$//;#To remove the non-word character at the end of the sent.
	#$sent =~ s/\s+\././g;#To remove the space between word and fullstop as in Mr .
	@words=split(/\s+/,$sent);
	$cindex=0;
	while($cindex <= $#words){
		&search($sent,$cindex,$nindex,$hnd_mng);
		$cindex=$nindex;
		#print "$hnd_mng\ ";
	}
#	print ")\n";
       	print";~~~~~~~~~~\n";
}


sub search { 
	
	@words=split(/\s+/,$sent);

	if($DICT{$words[$cindex]}){
		$total_mng=$DICT{$words[$cindex]};	
		@mngs = split(/\t\t/,$total_mng);
		$mng_index=0;
		foreach $mng (@mngs){
			$mng =~ /\d+\.([^\t]+)\t([^\t]+)\t([^\t]+)\t([^\t]+)\t([^\t]+)\t([^\t]+)/;
			
			$eng_word_tmp=$1;
			$hnd_mng=$2;
			$catg=$4;
			$group_head=$5;
                        $mng_typ=$6;#variable $mng_typ is added by Mahalaxmi. (24-04-10)
			$match=1;
			$word=$words[$cindex];
			$i=1;
			while($match){
				$new_word=$word;
				$new_word =~ s/\(/\\(/g;# Added to avoid error(when strings have "(" or ")")	
				$new_word =~ s/\)/\\)/g;
                                $new_word =~ s/\[/\\[/g;# Added to avoid error(when strings have "[" or "]") by Roja (8-8-11)
                                $new_word =~ s/\]/\\]/g;#             "
				if($eng_word_tmp =~ /$new_word/){
					if($eng_word_tmp eq  $word){
						$next_word=$word." ".$words[$cindex+$i];
						$next_mng=$mngs[$mng_index+1];
						$next_mng =~ /\d+\.([^\t]+)\t([^\t]+)/;
						$next_eng_word_tmp=$1;
						if($next_word eq $next_eng_word_tmp){}
						else{
							#print "(deffacts cmp-phrase-mng\n";
							#print "$hnd_mng  ";
							$nindex=$cindex+$i;
							#print "(";
							print "(ids-cmp_mng-head-cat-mng_typ "; #changed the pattern (ids-cmp_mng-head-cat to (ids-cmp_mng-head-cat-mng_typ by Mahalaxmi (24-04-10)
							for($j=$cindex;$j<$nindex;$j++){
								$k=$j+1;
								if($j eq $nindex-1){ print "$k $hnd_mng\t$group_head\t$catg\t$mng_typ)\n";}
								else{print "$k ";}
							}
							#print " )\n";
							return;
						}

					}
					$word=$word." ".$words[$cindex+$i];
					$i++;
				}	
				else{$match=0;}
			}
			$mng_index++;
		}
		$nindex=$cindex+1;
	}
	else {
		$nindex=$cindex+1;
	}
}

