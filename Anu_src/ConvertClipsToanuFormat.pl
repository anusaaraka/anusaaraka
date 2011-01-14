#!/usr/bin/perl   

#$path_clips = "../";
#$path_clips = "/home/mahalaxmi/Anusaraka_test/"; 
$path_clips = $ARGV[1];

$/          = "\n\n";
print $2;
open( TMP, "< $path_clips\/tmp\/$ARGV[0]\.sent\_info" )
  || die "Can't open file $ARGV[0].snt_info\n";
while ( $in = <TMP> ) {
    @word_info_ar = split( /\n/, $in );
    for ( $i = 0 ; $i <= $#word_info_ar ; $i++ ) {
        @flds = split( /\t/, $word_info_ar[$i], 35 );    #maximum 35 fields
        if ( $i != 0 ) {
            &root(@flds);
            &pos(@flds);
            &chunk(@flds);
            &paxasUwra(@flds);
            &wsd(@flds);
            &paxasUwra_lwg(@flds);
	    &parser_lwg(@flds);
            &chunk_prep_mv(@flds);
            &parser_prep_mv(@flds);
            &target_lang(@flds);
        }

        print join( "\t", @flds ), "\n";
    }
    print "\n";
}

sub to_iscii {

    my $wx = $_[0];
    open( WX, "> tmp_wx" ) || die "Can't open file tmp_wx\n";
    print WX "$wx";
    close(WX);
    system("roman_to_iscii < tmp_wx > tmp_isc");
    open( ISC, "< tmp_isc" ) || die "Can't open file tmp_isc\n";
    chomp( $isc = <ISC> );
    return $isc;

}

sub root {

    local $/ = "\n";
    if ( $flds[0] =~ /(\d+)\.(\d+)\.(\d+)/ ) {
        $ParaId = $1;
        $SenId  = $2;
        $WordId = $3;
    }

    #	local $instances_filename = "all_instances".$ParaId."\.".$SenId;

    local $facts_filename =
        $path_clips
      . "/tmp/$ARGV[0]_tmp/"
      . $ParaId . "."
      . $SenId
      . "/all_facts";
    open( FACTS, "< $facts_filename" ) || die "Can't open $facts_filename\n";
    while (<FACTS>) {
        if ( $_ =~ /id-root\ $WordId\ (\w+)\)/ ) {
            $root = $1;
            $flds[5] = $root;
            close(FACTS);
            return;
        }
    }
}

sub pos {

    local $/ = "\n";
    if ( $flds[0] =~ /(\d+)\.(\d+)\.(\d+)/ ) {
        $ParaId = $1;
        $SenId  = $2;
        $WordId = $3;
    }

    local $facts_filename =
        $path_clips
      . "/tmp/$ARGV[0]_tmp/"
      . $ParaId . "."
      . $SenId
      . "/all_facts";
    open( FACTS, "< $facts_filename" ) || die "Can't open $facts_filename\n";
    while (<FACTS>) {

        if ( $_ =~ /id\-cat\s+$WordId\s+([^\)]+)/ ) {
            $pos = $1;
            $flds[6] = $pos;
            close(FACTS);
            return;
        }
    }
}

sub chunk {

    local $/ = "\n";
    if ( $flds[0] =~ /(\d+)\.(\d+)\.(\d+)/ ) {
        $ParaId = $1;
        $SenId  = $2;
        $WordId = $3;
    }

    #local $filename = "all_facts".$ParaId."\.".$SenId;
    local $facts_filename =
        $path_clips
      . "/tmp/$ARGV[0]_tmp/"
      . $ParaId . "."
      . $SenId
      . "/chunk.dat";
    open( FACTS, "< $facts_filename" ) || die "Can't open $facts_filename\n";
    while (<FACTS>) {
        if (   ( $_ =~ /chunk_ids\s+(\w+).*\s+$WordId\s+/ )
            || ( $_ =~ /chunk_ids\s+(\w+).*\s+$WordId\)/ ) )
        {
            $chunk = $1;
            $flds[7] = $chunk;
            close(FACTS);
            return;
        }
    }
}

sub paxasUwra {

    local $/ = "\n";
    if ( $flds[0] =~ /(\d+)\.(\d+)\.(\d+)/ ) {
        $ParaId = $1;
        $SenId  = $2;
        $WordId = $3;
    }

    local $facts_filename =
        $path_clips
      . "/tmp/$ARGV[0]_tmp/"
      . $ParaId . "."
      . $SenId
      . "/all_facts";
    open( FACTS, "< $facts_filename" ) || die "Can't open $facts_filename\n";
    while (<FACTS>) {

        if ( $_ =~ /id_paxasUwra\s+$WordId\s+"([^"]+)/ ) {
            $paxasUwra = $1;
            $flds[9] = &to_iscii($paxasUwra);

            #			$flds[9]=$paxasUwra_isc;
            close(FACTS);
            return;
        }
    }
}
sub paxasUwra_lwg {

    local $/ = "\n";
    if ( $flds[0] =~ /(\d+)\.(\d+)\.(\d+)/ ) {
        $ParaId = $1;
        $SenId  = $2;
        $WordId = $3;
    }

    local $hindi_tam_info =
        $path_clips
      . "/tmp/$ARGV[0]_tmp/"
      . $ParaId . "."
      . $SenId
      . "/hindi_tam_info.dat";
    local $lwg_info =
        $path_clips
      . "/tmp/$ARGV[0]_tmp/"
      . $ParaId . "."
      . $SenId
      . "/lwg_info_tmp.dat";

    open( LWG, "< $lwg_info" ) || die "Can't open $lwg_info\n";
    while (<LWG>) {
        if ( $_ =~ /lwg_root-verbchunk-tam-chunkids/ ) {
            $_ =~
/lwg_root-verbchunk-tam-chunkids\s+([\S]+)\s+([\S]+)\s+([\S]+)\s+(.*)\)/;

            $head_word = $1;
            $tam_group = $2;
            $tam       = $3;
            $group_ids = $4;

            #			$head_word_id=$4;
            @tam_group_ids = split( /\s+/, $group_ids );
            foreach $id (@tam_group_ids) {
                if ( $WordId eq $id ) {
                    if ( $head_word eq $flds[5] ) {
                        open( HTAM, "< $hindi_tam_info" )
                          || die "Can't open $hindi_tam_info\n";
                        while (<HTAM>) {
                            if ( $_ =~
/pada_info.*eng_tam\s+(\w+).*hin_tam\s+(\w+).*vibhakti\s+(\w+)? ko/
                              )
                            {

                 #$_ =~ /eng_tam\s+(\w+).*(vibhakti\s+(\w+)?).*hin_tam\s+(\w+)/;
                                $eng_tam          = $1;
                                $hin_tam          = $2;
                                $subject_vibhakti = $3;
                                if ( $tam eq $eng_tam ) {
                                    $paxasUwra_lwg =
                                        $flds[14]
                                      . "nA{\@tam:"
                                      . $subject_vibhakti . ":"
                                      . $hin_tam . "}";
                                    $flds[11] = &to_iscii($paxasUwra_lwg);
                                    close(LWG);
                                    close(HTAM);
                                    return;
                                }
                            }
                        }
                    }

#print -->> in tam fields of verb groups(e.g had_to_eat : "had" & "to" have --> in tam field)
                    else { $flds[11] = "-->>"; return; }
                }
            }

            # for other words write the paxasUwra as it is.
            $paxasUwra_lwg = $flds[9];
            $flds[11] = $paxasUwra_lwg;
        }

        # for other words write the paxasUwra as it is.
        $paxasUwra_lwg = $flds[9];
        $flds[11] = $paxasUwra_lwg;
    }
}

sub parser_lwg {

    local $/ = "\n";
    if ( $flds[0] =~ /(\d+)\.(\d+)\.(\d+)/ ) {
        $ParaId = $1;
        $SenId  = $2;
        $WordId = $3;
    }

    local $hindi_tam_info =
        $path_clips
      . "/tmp/$ARGV[0]_tmp/"
      . $ParaId . "."
      . $SenId
      . "/hindi_tam_info.dat";
    local $lwg_info =
        $path_clips
      . "/tmp/$ARGV[0]_tmp/"
      . $ParaId . "."
      . $SenId
      . "/lwg_info_tmp.dat";

    open( LWG, "< $lwg_info" ) || die "Can't open $lwg_info\n";
    while (<LWG>) {
        if ( $_ =~ /root-verbchunk-tam-chunkids/ ) {
            $_ =~
/root-verbchunk-tam-chunkids\s+([\S]+)\s+([\S]+)\s+([\S]+)\s+(.*)\)/;

            $head_word = $1;
            $tam_group = $2;
            $tam       = $3;
            $group_ids = $4;

            #			$head_word_id=$4;
            @tam_group_ids = split( /\s+/, $group_ids );
            foreach $id (@tam_group_ids) {
                if ( $WordId eq $id ) {
                    if ( $head_word eq $flds[5] ) {
                        open( HTAM, "< $hindi_tam_info" )
                          || die "Can't open $hindi_tam_info\n";
                        while (<HTAM>) {
                            if ( $_ =~
/pada_info.*eng_tam\s+(\w+).*hin_tam\s+(\w+).*vibhakti\s+(\w+)? ko/
                              )
                            {

                 #$_ =~ /eng_tam\s+(\w+).*(vibhakti\s+(\w+)?).*hin_tam\s+(\w+)/;
                                $eng_tam          = $1;
                                $hin_tam          = $2;
                                $subject_vibhakti = $3;
                                if ( $tam eq $eng_tam ) {
                                    $paxasUwra_lwg =
                                        $flds[14]
                                      . "nA{\@tam:"
                                      . $subject_vibhakti . ":"
                                      . $hin_tam . "}";
                                    $flds[12] = &to_iscii($paxasUwra_lwg);
                                    close(LWG);
                                    close(HTAM);
                                    return;
                                }
                            }
                        }
                    }

#print -->> in tam fields of verb groups(e.g had_to_eat : "had" & "to" have --> in tam field)
                    else { $flds[12] = "-->>"; return; }
                }
            }

            # for other words write the paxasUwra as it is.
            $paxasUwra_lwg = $flds[9];
            $flds[12] = $paxasUwra_lwg;
        }

        # for other words write the paxasUwra as it is.
        $paxasUwra_lwg = $flds[9];
        $flds[12] = $paxasUwra_lwg;
    }
}

sub wsd {

    local $/ = "\n";
    if ( $flds[0] =~ /(\d+)\.(\d+)\.(\d+)/ ) {
        $ParaId = $1;
        $SenId  = $2;
        $WordId = $3;
    }

    #local $instances_filename = "all_instances".$ParaId."\.".$SenId;
    local $facts_filename =
        $path_clips
      . "/tmp/$ARGV[0]_tmp/"
      . $ParaId . "."
      . $SenId
      . "/all_facts";
    open( FACTS, "< $facts_filename" ) || die "Can't open $facts_filename\n";
    while (<FACTS>) {
        if ( $_ =~ /id\-HM\s+$WordId\s+([\S]+)\s*\)/ ) {
            $hnd_meaning = $1;
            $flds[14] = &to_iscii($hnd_meaning);
            close(FACTS);
            return;
        }
    }
}

sub find_paxa {

    my $g_ids         = $_[0];
    my $aper_out_file = $_[1];
    my $g_cat         = $_[2];
    $g_ids =~ s/^\s+//;
    $g_ids =~ s/\s+$//;
    @ids = split( /\s+/, $g_ids );
    $final_paxa = "";
#    foreach $g_id (@ids) {
     local $i;
     for($i=0;$i<=$#ids;$i++){
	$g_id=$ids[$i];
        open( TMP_APER, "< $aper_out_file" )
          || die "Can't open file $aper_out_file\n";
        while (<TMP_APER>) {
            chomp($_);
            if ( $_ =~ /^\(id-Apertium_output (\d+)\ (.*)\)/ ) {
                my $id = $1;
                my $HM = $2;

                #$HM =~ s/\s+/\_/g;
                $HM =~ s/0//g;
                $HM =~ s/#//g;
                $HM =~ s/^\s+//g;
                $HM =~ s/\s+$//g;
                $HM =~ s/\_$//g;
                $HM =~ s/\ /\_/g;

                if ($g_id eq $id ) {
                    $final_paxa = $final_paxa . " " . $HM;
                }
            }
        }
    }

    close(TMP_APER);
    if ( $g_cat eq "PP" ) {
        $final_paxa =~ s/#//g;
        $final_paxa =~ s/^\s+//;
        $final_paxa =~ s/\s+$//;
        $final_paxa =~ /(.*)\ (\S+)$/;
        $final_paxa = $1 . "_" . $2;
    }
    $final_paxa =~ s/^\s+//;
    $final_paxa =~ s/\s+$//;
    return $final_paxa;
}


sub target_lang {

    local $/ = "\n";
    if ( $flds[0] =~ /(\d+)\.(\d+)\.(\d+)/ ) {
        $ParaId = $1;
        $SenId  = $2;
        $WordId = $3;
    }
    local $hnd_mng =
        $path_clips
      . "/tmp/$ARGV[0]_tmp/"
      . $ParaId . "."
      . $SenId
      . "/hindi_meanings.dat";
    local $aper_output_filename =
        $path_clips
      . "/tmp/$ARGV[0]_tmp/"
      . $ParaId . "."
      . $SenId
      . "/id_Apertium_output.dat";

	$aper_found=0;
	open(APER_OUT,"< $aper_output_filename") || die "Can't open $aper_output_filename";
	while(<APER_OUT>){
		chomp($_);
        	if ( $_ =~ /id-Apertium_output\s+(\d+)\s+(.*)\s+\)/ ) {
                	my $id = $1;
               		my $HM = $2;
			if($WordId eq $id){
				$HM =~ s/0//g;
	        	        $HM =~ s/#//g;
        	        	$HM =~ s/^\s+//g;
		                $HM =~ s/\s+$//g;
                		$HM =~ s/\_$//g;
		                $HM =~ s/\ /\_/g;

				$flds[29] = &to_iscii($HM);
				$aper_found=1;
				last;
			}
		}
	}
	if($aper_found eq 0){
		open(HND_MNG,"< $hnd_mng") || die "Can't open $hnd_mng";
		while(<HND_MNG>){
			chomp($_);
	        	if ( $_ =~ /id-HM\s+(\d+)\s+(.*)\s*\)/ ) {
				if($WordId eq $id){
					$HM =~ s/0//g;
	       	        		$HM =~ s/#//g;
	       	        		$HM =~ s/^\s+//g;
			                $HM =~ s/\s+$//g;
                			$HM =~ s/\_$//g;
		        	        $HM =~ s/\ /\_/g;
					$flds[29] = &to_iscii($HM);
					last;
				}
			}
		}
	}
}
	

		

=pod

sub target_lang {

    local $/ = "\n";
    if ( $flds[0] =~ /(\d+)\.(\d+)\.(\d+)/ ) {
        $ParaId = $1;
        $SenId  = $2;
        $WordId = $3;
    }
    local $facts_filename =
        $path_clips
      . "/tmp/$ARGV[0]_tmp/"
      . $ParaId . "."
      . $SenId
      . "/all_facts";
    local $aper_output_filename =
        $path_clips
      . "/tmp/$ARGV[0]_tmp/"
      . $ParaId . "."
      . $SenId
      . "/id_Apertium_output.dat";
    open( FACTS, "< $facts_filename" )
      || die "Can't open $instances_filename\n";
    while (<FACTS>) {
        if ( $_ =~ /pada_info/ ) {
            if ( $_ =~
/\(pada_info.*.*\(H_vibakthi\s+(\w*).*\(group_head_id\s+(\d+).*\(group_cat\s+(\w+).*\(group_ids\s+([^\)]+)\)/
              )
            {
                $H_viBakwi       = $1;
                $group_head_id   = $2;
                $group_cat       = $3;
                $group_class_ids = $4;

                $final_paxa =
                  &find_paxa( $group_class_ids, $aper_output_filename,
                    $group_cat );

                $final_paxa =~ s/#//g
                  ; # To delete "#" if apertium couldn't give the correct output.
                $final_paxa =~ s/\\//g;
                $final_paxa =~ s/nil//g;

#if group category is PP then move pp from last to first position in group class ids.

                if ( $group_cat eq "PP" ) {
                    $group_class_ids =~ /(.*)\ (\d+)$/;
                    $new_gp_class_ids = $2 . " " . $1;

                    @array_group_class_ids = split( /\s+/, $new_gp_class_ids );
                }
                else {
                    @array_group_class_ids = split( /\s+/, $group_class_ids );
                }
                @array_final_paxa = split( /\s+/, $final_paxa );
                $count            = 0;
                $array_index      = 0;
                $flag             = 0;

                #for matching each word in final paxa output with its id
                foreach $id (@array_group_class_ids) {
                    if ( $WordId eq $id ) {
                        $array_index = $count;
                        $flag        = 1;
                        last;
                    }
                    $count++;
                }
                if ($flag) {

                    #If equal number of words in both english & hindi paxa.
                    if ( $#array_group_class_ids == $#array_final_paxa ) {
                        $word_paxa = $array_final_paxa[$array_index];
                    }
                    else {

# if the no of words in final paxa is less than the total no of words in the pada then print from end of the final paxa group
                        if ( ($array_index) <
                            ( $#array_group_class_ids - $#array_final_paxa ) )
                        {
                            $word_paxa = "-";
                        }
                        else {

                # the array index for final paxa is index in english paxa - diff
                            $diff =
                              $#array_group_class_ids - $#array_final_paxa;
                            $word_paxa =
                              $array_final_paxa[ $array_index - $diff ];
                        }
                    }
                }

		$word_paxa =~ s/^\s+//;
		$word_paxa =~ s/\s+$//;
                foreach $id (@array_group_class_ids) {
                    if ( $WordId eq $id ) {
                        if ( $WordId eq $group_head_id ) {
                            if ( $group_cat eq "NP" ) {
                                $target_lang = $word_paxa;
                                $flds[29] = &to_iscii($target_lang);
                                close(FACTS);
                                return;
                            }
                            elsif ( $group_cat eq "VP" ) {
                                if($final_paxa ne ""){$target_lang = &to_iscii($final_paxa);}
				else{ $target_lang="-";}
                                $flds[29] = $target_lang;
                                close(FACTS);
                                return;
                            }
                            elsif ( $group_cat eq "PP" ) {

                                $target_lang = &to_iscii($word_paxa);
                                $flds[29] = $target_lang;
                                close(FACTS);
                                return;
                            }

                        }
                        elsif ( $group_cat eq "VP" ) {
                            $flds[29] = "-->";
                            return;
                        }    # print nothing for tams in the verb group.
                         #	elsif($group_cat eq "PP"){$flds[27]="-->";return; } # print nothing for prepositions in pp group.
                        else {
                            if ( $word_paxa ne "" ) {
                                $target_lang = $word_paxa;
                            }
                            else { $target_lang = "-"; }
                            $flds[29] = &to_iscii($target_lang);
                            close(FACTS);
                            return;
                        }
                    }
                }

            }
        }
    }

    #for words not part of any paxa print the wsd field
    if   ( $flds[28] eq "" ) { $target_lang = "-"; }
    else                     { $target_lang = $flds[28]; }
    $flds[29] = $target_lang;
    close(FACTS);
    return;

}
=cut

sub parser_prep_mv{


    local $/="\n";
    if($flds[0] =~ /(\d+)\.(\d+)\.(\d+)/){$ParaId=$1;$SenId=$2;$WordId=$3;}
    local $facts_filename = $path_clips."/tmp/$ARGV[0]_tmp/".$ParaId.".".$SenId."/all_facts";
    local $pada_info = $path_clips."/tmp/$ARGV[0]_tmp/".$ParaId.".".$SenId."/pada_id_info.dat";
    open(PADA,"< $pada_info") || die "Can't open pada_id_info.dat\n";

    local $prev_chunk_cat,$prev_chunk_id;

	local $pada_info = $path_clips."/tmp/$ARGV[0]_tmp/".$ParaId.".".$SenId."/pada_id_info.dat";
    open(PADA,"< $pada_info") || die "Can't open pada_id_info.dat\n";

    local $prev_chunk_cat,$prev_chunk_id;

    while(<PADA>){
        chomp($_);
        if($_ =~ /PP\s+([^\)]+)\)/){
		@ids=split(/\s+/,$1);
		for(my $i=0;$i<=$#ids;$i++){
#		foreach $id (@ids){
		if($WordId eq $ids[$i]){
			if ($i eq $#ids-1){
#			if($WordId eq $2){
				$HM=&find_word($facts_filename,$ids[$#ids]);	
				$flds[28]=$flds[14]."_".&to_iscii($HM);
				close(FACTS);
				return;
			}
			elsif($i eq $#ids){
				$flds[28] = "-->";
                close(FACTS);
				return;
			}
			else{
				$flds[28] = $flds[14];
                close(FACTS);
				return;
			}
		}}}
	}
	$flds[28] = $flds[14];
		
}

sub chunk_prep_mv {
    local $/ = "\n";
    if ( $flds[0] =~ /(\d+)\.(\d+)\.(\d+)/ ) {
        $ParaId = $1;
        $SenId  = $2;
        $WordId = $3;
    }
    local $facts_filename =
        $path_clips
      . "/tmp/$ARGV[0]_tmp/"
      . $ParaId . "."
      . $SenId
      . "/all_facts";
    local $chunk_filename =
        $path_clips
      . "/tmp/$ARGV[0]_tmp/"
      . $ParaId . "."
      . $SenId
      . "/chunk.dat";
    local $aper_output_filename =
        $path_clips
      . "/tmp/$ARGV[0]_tmp/"
      . $ParaId . "."
      . $SenId
      . "/id_Apertium_output.dat";


    open( CHK, "< $chunk_filename" ) || die "Can't open $chunk_filename\n";
    $prev_chunk_cat = "";
    $prev_chunk_id  = "";
    $chunk_cat = "";
    $chunk_id  = "";
    while (<CHK>) {
        chomp($_);
        if ( $_ =~ /chunk_ids\s+([^\s]+)\s+([^\)]+)\)/ ) {
            $chunk_cat      = $1;
            $chunk_group_id = $2;
            if ( $chunk_group_id =~ /\s+(\d+)$/ ) { $chunk_id = $1; }
            else { $chunk_id = $chunk_group_id; }
            $chunk_word = &find_paxa( $chunk_group_id, $aper_output_filename );
            if ( $chunk_id eq $WordId ) {
                my $chunk_word = $flds[14];
                if ( $prev_chunk_cat eq "PP" ) {

                    $prev_chunk_word =
                      &find_paxa( $prev_chunk_id, $aper_output_filename );
                    if ( $prev_chunk_word eq "" ) {
                        $prev_chunk_word =
                          &find_word( $facts_filename, $prev_chunk_id );
                    }
                    $flds[27] = $flds[14] . "_" . &to_iscii($prev_chunk_word);
                    close(FACTS);
                    return;
                }
                elsif ( $chunk_cat eq "PP" ) {
                    $flds[27] = "-->";
                    close(FACTS);
                    return;
                }
                else {
                    $flds[27] = $flds[14];
                    close(FACTS);
                    return;
                }
            }
            else {

                $prev_chunk_cat = $chunk_cat;
                $prev_chunk_id  = $chunk_id;
                $flds[27]       = $flds[14];
            }
        }
    }
}

sub find_word {
    my $facts_filename = $_[0];
    my $word_id        = $_[1];

    local $/ = "\n";
    open( FACTS, "< $facts_filename" ) || die "Can't open $facts_filename\n";

    while (<FACTS>) {

        if ( $_ =~ /id-HM\s+([^\s]+)\s+([^\)]+)/ ) {
            $id = $1;
            $HM = $2;
            if ( $id eq $word_id ) { return &to_iscii($HM); }
        }

    }
}

