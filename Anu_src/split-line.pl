$para_id=1;
$sen_id=1;
$word_id=1;
$start_para=0;
while(<STDIN>){
	if($_ =~ /<TITLE>(.*)<\/TITLE>/){
		$title=$1;
		$title =~ s/^\s+//;
		$title =~ s/\s+$//;
		@words = split(/\s+/,$title);
		if($#words eq 0){
			$words[0] =~ /\^([^\/]+)/;
			$wd_s =$1;

			print "1.1.1\t<TITLE>\t$wd_s\t".".</TITLE>";
		}
		else{
			foreach $wd (@words) { 
				$wd =~ /\^([^\/]+)/;
				$wd_s =$1;
				if($wd eq $words[0]){print "$para_id.$sen_id.$word_id\t<TITLE>\t$wd_s\t";}
				elsif($wd eq $words[$#words]){print "\n$para_id.$sen_id.$word_id\t\t$wd_s\t".".<\/TITLE>";}
				else {print "\n$para_id.$sen_id.$word_id\t\t$wd_s\t";}
				$word_id++;
	
			}
		}
	}
	elsif ($_ =~ /<p>/){$start_para=1;$sen_id=1;$para_id++;}
	elsif ($_ =~ /<\/p>/){$end_para=1;print "<\/p>";}
	else{
		#for handling the last sentence where two <sent> marks appear.
		if($_ =~ /<sent>\$\^\.\/\.<sent>\$/){ $sent=$_;$sent =~ s/<sent>\$\^\.\/\.<sent>\$/<sent>\$/;}
		else { $sent = $_;}
		@sen = split(/<sent>\$/,$sent);
		foreach $sn (@sen){
			if($sn ne "\n"){
			$word_id=1;
			$sn =~ /(.)$/;
			$sn_end_marker= $1;
			$sn =~ s/^\s+//;
			$sn =~ s/\s+$//;
			@words= split(/\$\s+/,$sn);
			$start_sen=0;
			foreach $wd (@words) { 
				$wd =~ /\^([^\/]+)/;
				$wd_only =$1;
				@mwd=split(/\s+/,$wd_only);
				foreach $mwd(@mwd){
				$wd_s=$mwd;
				#for marking sentence ending.
				if(($wd_s eq ".") ||($wd_s eq "?")) {if($wd eq $words[$#words]){print "$sn_end_marker<\/s>";$start_sen=0;}}
				elsif(($wd_s eq ",")||($wd_s eq ";")||($wd_s eq ":")||($wd_s eq "'")||($wd_s eq "\"")||($wd_s eq "!")){
					print "$wd_s";
				}
				else{
				if(($wd eq $words[0]) && ($start_sen eq 0)){
					if($start_para){$start_para=0;print "\n$para_id.$sen_id.$word_id\t<p><s>\t$wd_s\t";}
				 	else{print "\n$para_id.$sen_id.$word_id\t<s>\t$wd_s\t";}
					$start_sen=1;
				}
				elsif($wd eq $words[$#words]){
					print "\n$para_id.$sen_id.$word_id\t\t$wd_s\t$sn_end_marker<\/s>";
					$start_sen=0;
				}
				else {print "\n$para_id.$sen_id.$word_id\t\t$wd_s\t";}
				$word_id++;
				}
				}
			}
			$sen_id++;
			}
		}
			
	}
}
