$flag_tran1=0;
$flag_tran2=0;
$flag_tran3=0;
$flag_scon=0;
$flag_res=0;

open(PADATMP,"> $ARGV[0]/ol_pada_tmp.dat") or die "Can't open file ol_pada_tmp.dat\n";
open(PADATMP1,"> $ARGV[0]/ol_pada_tmp1.dat") or die "Can't open file ol_pada_tmp1.dat\n";
open(PADATMP2,"> $ARGV[0]/ol_pada_tmp2.dat") or die "Can't open file ol_pada_tmp2.dat\n";
while(<STDIN>){

  $line="";




  if($_ =~ /RESOLVED SWORK/) {
    $flag_res=1;
    $line=<STDIN>;
    $line=<STDIN>;
    $line=<STDIN>;
    $line=<STDIN>;
    $i=0;
    @res=();
    while($line !~ /^\n/){
      $line =~ s/^\s+//;
      $line =~ s/\s+$//;
      $res[$i]=$line;
      $line = <STDIN>;
      $i++;
    }
  }
  if($flag_res){
    @res2d=();
    for($i=1;$i<=$#res;$i++){
      @reselm=split(/\s+/,$res[$i]);
      $res2d[$i]= [ @reselm ];
    }
    $flag_res=0;
  }

#Get SCON output of tran4 module
  if($_ =~ /SCON FOR tran1/){
    $flag_scon=1;
    $line1=<STDIN>;
    $line1=<STDIN>;
    $count=0;
    @scon=();
    while($line1 !~ /^\n/){
      @elm=();
      $line1 =~ s/^\s+//;
      $line1 =~ s/\s+$//;
      @elm=split(/\s+/,$line1);
      if($#elm == "20"){ 
        $count++;
      }
      $scon[$count]=$scon[$count].$line1;
      $line1=<STDIN>;
    }
  }




    if($_ =~ /OUTPUT TARGET ARRAYS IN tran1/) { 

      $line=<STDIN>;
      while($line !~ /SWORKO/){
        $line=<STDIN>;
      }

      $flag_tran1=1;
      $i=0;	
      @res=();
      while($line !~ /^\*EOS\*/){
        $line =~ s/^\s+//;
        $line =~ s/\s+$//;
        $trg_tran1[$i]=$line;
        $line = <STDIN>;
        $i++;
      }
    }


    if($_ =~ /OUTPUT TARGET ARRAYS IN tran2/) { 

      $line=<STDIN>;
      while($line !~ /SWORKO/){
        $line=<STDIN>;
      }

      $flag_tran2=1;
      $i=0;	
      @res=();
      while($line !~ /^\*EOS\*/){
        $line =~ s/^\s+//;
        $line =~ s/\s+$//;
        $trg_tran2[$i]=$line;
        $line = <STDIN>;
        $i++;
      }
    }

    if($_ =~ /OUTPUT TARGET ARRAYS IN tran3/) { 

      $line=<STDIN>;
      while($line !~ /SWORKO/){
        $line=<STDIN>;
      }

      $flag_tran3=1;
      $i=0;	
      @res=();
      while($line !~ /^\*EOS\*/){
        $line =~ s/^\s+//;
        $line =~ s/\s+$//;
        $trg_tran3[$i]=$line;
        $line = <STDIN>;
        $i++;
      }
    }


    if($flag_scon){
      @scon2d=();
      for($i=0;$i<=$#scon;$i++){
        @sconelm=split(/\s+/,$scon[$i]);
        $scon2d[$i]= [ @sconelm ];
      }
      $flag_scon=0;
    }

    if($flag_tran1){ 
      &process(\@res2d,\@scon2d,\@trg_tran1,"tran1");
      $flag_tran1=0;
      print PADATMP "\n";
      print PADATMP1 "\n";
    }
    if($flag_tran2){ 
      &process(\@res2d,\@scon2d,\@trg_tran2,"tran2");
      $flag_tran2=0;
      print PADATMP "\n";
      print PADATMP1 "\n";
    }
    if($flag_tran3){ 
      &process(\@res2d,\@scon2d,\@trg_tran3,"tran3");
      $flag_tran3=0;
      print PADATMP "\n";
      print PADATMP1 "\n";

#printing VP padas: Read the lwg file and print it.
      open(LWG,"< $ARGV[1]") or die "Can't open file $ARGV[1]\n";
      while(<LWG>){
        chomp($line=$_);
        if($line =~ /[^\s]+\s+[^\s]+\s+[^\s]+\s+[^\s]+\s+([^\)]+)\)/){
          $v_grp=$1;
          $v_grp =~ s/^\s+//;
          $v_grp =~ s/\s+$//;
          @vp=split(/\s+/,$v_grp);
          @vp_sort=sort { $a <=> $b } @vp;
          print PADATMP "(tranlevel-ptype-headid-grpids - VP $vp_sort[$#vp] ";
          print PADATMP1 "(tranlevel-ptype-headid-grpids - VP $vp_sort[$#vp] ";
          print PADATMP2 "(tranlevel-ptype-headid-grpids - VP $vp_sort[$#vp] ";
          foreach $id (@vp_sort){
            print PADATMP " $id";
            print PADATMP1 " $id";
            print PADATMP2 " $id";
          }
          print PADATMP ")\n";
          print PADATMP1 ")\n";
          print PADATMP2 ")\n";
        }
      }
    }
}

print PADATMP "\n";
print PADATMP1 "\n";
print PADATMP2 "\n";
close(PADATMP);
close(PADATMP1);
close(PADATMP2);


sub process{




  my($refres2d,$refscon2d,$reftrg_tran,$level)=@_;

  @res2d=@{$refres2d};
  @scon2d=@{$refscon2d};
  @trg_tran=@{$reftrg_tran};

  open(ERR,">$ARGV[0]/ol_pada_debug.dat") || die "Can't open file ol_pada_debug.dat for opening\n";

  foreach $line (@trg_tran){
    if($line =~ /\s+(\d+)\s+EOS\s+/){$maxid=$1;}
  }
  $line=0;
  $prev_pp=0;
  for $line (0 .. $#trg_tran){
    if($trg_tran[$line] !~ /SWORKO.*BOS|SWORKO.*EOS|\* SWITCH68 \*/){
      if ($trg_tran[$line] =~ /SWORKO\s+=\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+(\S+)/){

        $wc=$1;
        $type=$2;
        $form=$3;
        $wid=$4;
        $word=$5;


				#for handling sentneces 
				#--------
				#In addition, a series of commands can be automatically read directly from a file when CLIPS is first started
				# or as the result of the batch command. 
				#-------
				#
				#where in "OUTPUT TARGET ARRAYS IN tran3" the "," is head in the firs SWORKO. Hence take the previous word as head.
				#
				#

				if($word =~ /^\S+$/){
						
					$wid = $wid-1;
					$tmp_id=$scon2d[$wid][10];
					$word=$res2d[$tmp_id][35];
				}


        if(($wc != 2)&&($wc != 12)){
          $trg_tran[$line+2] =~ /SCONPO\s+(.*)/;
          $sconpo_line=$1;
          @sconpo=split(/\s+/,$sconpo_line);
          $grp_id="";
          foreach $id (@sconpo){
            if($id !~ /\-\d/){ 
              if((abs($id) > 1) && (abs($id) < $maxid)){ $grp_id=$grp_id." ".$id;}
            }
          }
#for adding prepositions coming in SCONHF

          if($trg_tran[$line+5] =~ /SCONHF/){
            if($trg_tran[$line+5] =~ /SCONHF\s+(\d+)\s+(\d+)/){
		$num1=$1;
		$num2=$2;
		if($num1 < $maxid){ $new_grp_id=$grp_id." ".$num1;}
		elsif($num2 < $maxid){ $new_grp_id=$grp_id." ".$num2;}
	    }
	    elsif($trg_tran[$line+5] =~ /SCONHF\s+(\d+)\s*$/){
		$numpp=$1;
		if($numpp < $maxid){ $new_grp_id=$grp_id." ".$numpp;}
	    }
	}


          else {$new_grp_id=$grp_id;}

          $old_grp_id=$new_grp_id;

          if($new_grp_id =~ /\d \d/){
            @grp1=split(/\s+/,$new_grp_id);
            @grp2=sort { $a <=> $b } @grp1;
            $grp3=join(" ",@grp2);
            $new_grp_id= &cont($grp3);
          }
          else{$new_grp_id=$grp_id;}

=pod
            if($grp_id =~ /\d \d/){
              $old_grp_id=$grp_id;
              $new_grp_id= &cont($grp_id);
            }
            else{$new_grp_id=$grp_id;$old_grp_id=$grp_id;}
=cut       

            $flag_prep=0;
          if($new_grp_id =~ /^\s*(\d+)\s*$/){$id=$1;if(($wc == 13)||($wc == 11)){
            $flag_prep=1;$prep_id=$id;}}


          if($new_grp_id =~ /^\s*$/){ 
            print ERR "group id for $wid not found in SWORK of $level\n";}
          else {

            $new_grp_id =~ s/^\s+//;
            $new_grp_id =~ s/\s+$//;
            @grp=split(/\s+/,$new_grp_id);
            @grp_sort=sort { $a <=> $b } @grp;
            %grp_hash = ();
            foreach $id (@grp_sort){
              $grp_hash{$id}=1;
            }

            $head_id=$wid;
            foreach $id (@new_grp_id){
              if(($res2d[$scon2d[$id][10]][35] == "and")||($res2d[$scon2d[$id][10]][35] == "or")){
                $head_id=$id;}
            }


#print tran1 and tran2 level groups.
            print PADATMP "(tranlevel-ptype-headid-grpids $level PP P$scon2d[$head_id][10] ";
            foreach $id (sort{ $a <=> $b } keys %grp_hash){
              print PADATMP " P$scon2d[$id][10]";
            }
            print PADATMP ")\n";

#for splitting groups in tran3

            if($level eq "tran3"){
              @tmp = ();
              $i=0;
              foreach $id (sort{ $a <=> $b } keys %grp_hash){
                if(($scon2d[$id][1] == "11")||($scon2d[$id][1] == "13")){
                  if(@tmp > 0){
                    $head_id=$tmp[$#tmp];
                    foreach $id (@tmp){
                      if(($res2d[$scon2d[$id][10]-1][35] eq "and")||($res2d[$scon2d[$id][10]-1][35] eq "or")){ $head_id=$id;} 
                    }
                    print PADATMP "\n(split_tranlevel-ptype-headid-grpids $level PP P$scon2d[$head_id][10] ";
                    foreach $id1 (@tmp){
                      print PADATMP " P$scon2d[$id1][10]";
                    }
                    print PADATMP ")\n";
                    @tmp = ();
                    $i=0;
                  }
                  $tmp[$i++]=$id;
                }
                else{
                  $tmp[$i++]=$id;
                }
              }
              if(@tmp > 0){
                $head_id=$tmp[$#tmp];
                foreach $id (@tmp){
                  if(($res2d[$scon2d[$id][10]-1][35] eq "and")||($res2d[$scon2d[$id][10]-1][35] eq "or")){
                    $head_id=$id;}
                }
                print PADATMP "(split_tranlevel-ptype-headid-grpids $level PP P$scon2d[$head_id][10] ";
                foreach $id1 (@tmp){
                  print PADATMP " P$scon2d[$id1][10]";
                }
                print PADATMP ")\n";
              }

            }
          }
















#for making PP groups in tran1 itself (logic: if prep before NP put the preposition in this NP pada in a different slot)

          if($new_grp_id =~ /^\s*$/){ 
            print ERR "group id for $wid not found in SWORK of $level\n";}
          else {

#for adding prepositions coming in SCONHF

          if($trg_tran[$line+5] =~ /SCONHF/){
            if($trg_tran[$line+5] =~ /SCONHF\s+(\d+)\s+(\d+)/){
		$num1=$1;
		$num2=$2;
		if($num1 < $maxid){ $new_grp_id=$grp_id." ".$num1;}
		elsif($num2 < $maxid){ $new_grp_id=$grp_id." ".$num2;}
	    }
	    elsif($trg_tran[$line+5] =~ /SCONHF\s+(\d+)\s*$/){
		$numpp=$1;
		if($numpp < $maxid){ $new_grp_id=$grp_id." ".$numpp;}
	    }
	}


          else {$new_grp_id=$grp_id;}

            $new_grp_id =~ s/^\s+//;
            $new_grp_id =~ s/\s+$//;
            @grp=split(/\s+/,$new_grp_id);
            @grp_sort=sort { $a <=> $b } @grp;
            %grp_hash = ();
            foreach $id (@grp_sort){
              $grp_hash{$id}=1;
            }

            $head_id=$wid;
            foreach $id (@new_grp_id){
              if(($res2d[$scon2d[$id][10]][35] == "and")||($res2d[$scon2d[$id][10]][35] == "or")){
                $head_id=$id;}
            }


            print PADATMP2 "(tranlevel-ptype-headid-grpids-prep $level PP P$scon2d[$head_id][10] ";

            foreach $id (sort{ $a <=> $b } keys %grp_hash){
              print PADATMP2 " P$scon2d[$id][10]";
            }
            if($flag_prep){
              print PADATMP2 " preposition";$prev_pp=0;$prev_pp_id="";
            }
            else{print PADATMP2 " 0";}
            print PADATMP2 ")\n";


=pod

              if($prev_pp){
                print PADATMP2 " P$prev_pp_id";$prev_pp=0;$prev_pp_id="";
              }
              else{print PADATMP2 " 0";}
=cut

          }












          if($old_grp_id =~ /^\s*$/){ 
            print ERR "group id for $wid not found in SWORK of $level\n";}
          else {

            print PADATMP1 "(tranlevel-ptype-headid-grpids $level PP P$scon2d[$wid][10] ";

#for adding prepositions coming in SCONHF

          if($trg_tran[$line+5] =~ /SCONHF/){
            if($trg_tran[$line+5] =~ /SCONHF\s+(\d+)\s+(\d+)/){
		$num1=$1;
		$num2=$2;
		if($num1 < $maxid){ 
              		print PADATMP1 " P$num1";
		}
		elsif($num2 < $maxid){ 
              		print PADATMP1 " P$num2";
		}
	    }
	    elsif($trg_tran[$line+5] =~ /SCONHF\s+(\d+)\s*$/){
		$numpp=$1;
		if($numpp < $maxid){ 
              		print PADATMP1 " P$numpp";
		}
	    }
	}

            $old_grp_id =~ s/^\s+//;
            $old_grp_id =~ s/\s+$//;
            @grp=split(/\s+/,$old_grp_id);
            @grp_sort=sort { $a <=> $b } @grp;
            foreach $id (@grp_sort){
              print PADATMP1 " P$scon2d[$id][10]";
            }
            print PADATMP1 ")\n";
          }
          $line++;


#if a pada has only one grp id and that is preposition, then make prev_pp flag active and join it to next NP.

          if($new_grp_id =~ /^\s*(\d+)\s*$/){$id=$1;if(($wc == 13)||($wc == 11)){
            $prev_pp=1;$prev_pp_id=$id;}}






        }
      }
    }
#for adding information of SWITCH ids.
    else{
      if ($trg_tran[$line] =~ /SWORKO\s+=\s+(\d+)\s+(\d+)\s+(\d+)\s+(\d+)\s+\*\s+([^\s]+)/){

        $wc=$1;
        $type=$2;
        $form=$3;
        $wid=$4;
        $word=$5;


        print PADATMP "(addition-level-word-sid $level $word P$wid)\n";
      }
    }
  }
  close(ERR);
}

#test the continuity of padas "i.e 3 4 5 7 8 -> 3 4 5 6 7 8"
sub cont{

  my($grp_id)=@_;
  $grp_id =~ s/^\s+//;
  $grp_id =~ s/\s+$//;
  @grp=split(/\s+/,$grp_id);
  $new_grp_id="";
  $prv_id="";
  foreach $id (@grp){
    if(($id != $prv_id+1)&&($prv_id ne "")){
      for($i=1;$i < $id-$prv_id;$i++){
        $miss_id=$prv_id+$i;
        $new_grp_id = $new_grp_id." ".$miss_id;
      }
      $new_grp_id=$new_grp_id." ".$id;
    }
    else{
      $new_grp_id=$new_grp_id." ".$id;
    }
    $prv_id=$id;
  }
#remove punctuation marks from grp_id
  @grp1=split(/\s+/,$new_grp_id);
  $new_grp_id1="";
  foreach $id1 (@grp1){
    if($res2d[$scon2d[$id1][10]-1][2] != 20){
			#for removing punctuation "=" where the wc=13(Hence have to check the word also) in the following sentences.
			#In reality if we calibrate a mercury thermometer and an alcohol thermometer in this way, we will find that a graph of one thermometer's reading versus the other is not a perfectly straight y = x line.


    if($res2d[$scon2d[$id1][10]-1][35] !~ /^=$/){

			$new_grp_id1=$new_grp_id1." ".$id1}

	}
  }
  return $new_grp_id1;
}


