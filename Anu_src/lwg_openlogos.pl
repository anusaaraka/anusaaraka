#	################################################################
#	This program takes the openlogos diagnosis file as input and produces the LWG of the sentence.

# 	Following information is collected from the database (form_description)

#	present-modal	can/must/may
#	preset-potential-modal	should/would/might
#	past-modal	must/may
#	past-potential-modal	could/should/would
#	present-be	is/are/am
#	past-be	was/were
#	present-emphatic	do/does
#	past-emphatic	did
#	
#
#	1	Infinitive and present (plural)
#	3	present-participle	
#	4	1st plural (are)
#	7	past and past-participle	
#	13  	were
#	15	simple past 	
#	20	Imperative sentence 	
#	22	present-emphatic_0
#	24	past-emphatic_0
#	28	to-inf (unlinked to the main verb)
#	30	present-modal_0
#	31	present-potential-modal_0
#	32	past-modal_have_en
#	33	past-potential-modal_have_en
#	34	will/shall_0
#	38	has/have_to_eat
#	39	has/have_to_be_en
#	40	present-be_ing
#	42	past-be_ing
#	43	present-potential-modal_be_ing
#	44	has/have_been_ing
#	48	will/shall_be_ing
#	54	has/have_en
#	56	had_en
#	60	present-modal_be_en
#	61	present-potential-modal_be_en
#	62	past-modal_have_been_en	
#	63	past-potential-modal_have_been_en
#	64	be_to_be_en
#	70	(present)be_being_en
#	72	(past)be_being_en
#	74	whill/shall_be_en
#	80	be_en
#	82	be_en
#	84	has/have_been_en
#	86	had_been_en
#	
#	
#		
#	
#	
#	#modals can come before these forms
#	44,46
#	
#	#emphatic markers can come before
#	38
#	39
#	
#	#to marker after verb 40(is_ing) and 3(is) 1(are)
#	27
#	28
#	
#	#before 35(ing form of verb)
#	1(keep eating)
#	3(keeps eating)
#	30(can keep eating)
#	7(kept eating)
#	
#	
#	#check for has/have/had before 38/39
#	has	3
#	have	1
#	had	7
#	
################################################################

use GDBM_File;
tie(%VBROOT,GDBM_File,$ARGV[2],&GDBM_WRCREAT,0644);



$flag_scon_tran1=0;
$flag_scon_tran2=0;
$flag_scon_tran3=0;
$flag_scon_tran4=0;
$flag_lwg_negation=0;
$flag_tran4=0;
$flag_qsen=0;

@scon=();
$tran4="";
$sent="";
@res=();

open(DIAG,"<$ARGV[1]") || die "Can't open $ARGV[1]\n";

$flag=0;
$j=0;
while(<DIAG>){
  if($_ =~ /Original/){$orig_sent=<DIAG>;}
  if($_ =~ /tran1/){$flag=1;}
  if(($_ =~ /\*\*\*SEMWRK VALUES/)&&($flag)){
    chomp($_);
    $sent=<DIAG>;
    chomp($sent);
    @wd=split(/       \s+/,$sent);
    $wd[2] =~ /^\s*(\d+)\s+(\d+)\s+/;
    $vb=$1;
    $type=$2;
#for not allowing "Let us go" type sentences
    if(($vb == 2)&& ($type != 569)){
      for $i (3 .. $#wd){
        $wd[$i] =~ /^\s*(\d+)\s+\d+\s+(\d+)\s+(\d+)/;
        if(($1 == 2)&&($2 == 1)){
          $causative_verb[$j]=$3;
          $j++;
          $flag_causative=1;
        }
      }
    }
  }
}

close(DIAG);


open(DIAG,"<$ARGV[1]") || die "Can't open $ARGV[1]\n";

while(<DIAG>){
  if($_ =~ /Original/){ chomp($sent=<DIAG>); 
#print "\n;$sent\n";
  }
  $line="";

  if($_ =~ /RESOLVED SWORK/) { 

    $line=<DIAG>;
    $line=<DIAG>;
    $line=<DIAG>;
    $line=<DIAG>;
    $i=0;	
    @res=();
    while($line !~ /SCON CELL ARRAY/){
      $line =~ s/^\s+//;
      $line =~ s/\s+$//;
      $res[$i]=$line;
      $line = <DIAG>;
      $i++;
    }
  }



#Get SCON output of tran2 module
  if($_ =~ /SCON FOR tran1/){
    $flag_scon_tran1=1;
    $line1=<DIAG>;
    $line1=<DIAG>;
    $count=0;
    @scon_tran1=();
    while($line1 !~ /^\n/){
      @elm=();
      $line1 =~ s/^\s+//;
      $line1 =~ s/\s+$//;
      @elm=split(/\s+/,$line1);
      if($#elm == "20"){ 
        $count++;
      }
      $scon_tran1[$count]=$scon_tran1[$count].$line1;
      $line1=<DIAG>;
    }


  }

#Get SCON output of tran2 module
  if($_ =~ /SCON FOR tran2/){
    $flag_scon_tran2=1;
    $line1=<DIAG>;
    $line1=<DIAG>;
    $count=0;
    @scon_tran2=();
    while($line1 !~ /^\n/){
      @elm=();
      $line1 =~ s/^\s+//;
      $line1 =~ s/\s+$//;
      @elm=split(/\s+/,$line1);
      if($#elm == "20"){ 
        $count++;
      }
      $scon_tran2[$count]=$scon_tran2[$count].$line1;
      $line1=<DIAG>;
    }


  }



#Get SCON output of tran3 module
  if($_ =~ /SCON FOR tran3/){
    $flag_scon_tran3=1;
    $line1=<DIAG>;
    $line1=<DIAG>;
    $count=0;
    @scon_tran3=();
    while($line1 !~ /CLSNFO ARRAYS/){
      @elm=();
      $line1 =~ s/^\s+//;
      $line1 =~ s/\s+$//;
      @elm=split(/\s+/,$line1);
      if($#elm == "20"){ 
        $count++;
      }
      $scon_tran3[$count]=$scon_tran3[$count].$line1;
      $line1=<DIAG>;
    }


  }

  $line="";
  $count=0;

#Get SWORK table in tran4
  if($_ =~ /SWORK TABLE IN tran4/) { 
    $tran4="";
    $flag_tran4=1;
    $line=<DIAG>;
    while($line !~ /CLSNFO ARRAYS/){
      $tran4=$tran4."\t".$line;
      $line=<DIAG>;
    }
  }


#Get SCON output of tran4 module
  if($_ =~ /SCON FOR tran4/){
    $flag_scon_tran4=1;
    $line1=<DIAG>;
    $line1=<DIAG>;
    $count=0;
    @scon=();
    while($line1 !~ /PHRBEG:/){
      @elm=();
      $line1 =~ s/^\s+//;
      $line1 =~ s/\s+$//;
      @elm=split(/\s+/,$line1);
      if($#elm == "20"){ 
        $count++;
      }
      $scon_tran4[$count]=$scon_tran4[$count].$line1;
      $line1=<DIAG>;
    }


  }

  $line="";
  $count=0;

#give to the process function to get lwg.
  if(($flag_scon_tran1) &&($flag_scon_tran2) &&($flag_scon_tran3) &&($flag_scon_tran4) && ($flag_tran4)){
    &process(\@res,\@scon_tran1,\@scon_tran2,\@scon_tran3,\@scon_tran4,$tran4);
    $flag_scon=0;$flag_tran4=0; $flag_qsen=0;
    @scon=();
    $tran4="";
  }



}

close(DIAG);


sub process{

  my ($refres,$refscon_tran1,$refscon_tran2,$refscon_tran3,$refscon_tran4,$tran4)=@_;
  @res=@{$refres};
  @scon_tran1=@{$refscon_tran1};
  @scon_tran2=@{$refscon_tran2};
  @scon_tran3=@{$refscon_tran3};
  @scon_tran4=@{$refscon_tran4};

  $word="";
  $sal="";
  $i=0;
  @line=split(/\s\s\s\s\s+/,$tran4);
  foreach $line2(@line){
    if(($line2 =~ /[A-Za-z,\?]/)||($line2 =~ /^\s*\d+\s*$/)){$line2 =~ s/(\w)\s+(\w)/\1_\2/;$word=$word."\t".$line2;}
    else{ 

      $line2 =~ s/\n//g;
      $line2 =~ s/^\s+//;
      $line2 =~ s/\s+$//;

      $tsal[$i]=$line2;$i++;}
  }

  $word =~ s/\n//;
  $word =~ s/^\s+//;
  $word =~ s/\s+$//;
  $word =~ s/\* CLS-MRKR \*/CLS-MRKR/g;
  $word =~ s/\* CLS-BOS \*/CLS-BOS/g;
  $word =~ s/\* CLS-EOS \*/CLS-EOS/g;
  $word =~ s/\* SWITCH68 \*/SWITCH68/g;

  @tword=split(/\s+/,$word);
#@tsal=split(/\s\s\s\s\s+/,$sal);


####################################################################################

#### for handling interogative sentences just interchange positions of 
#### Auxilaries and any nouns inbetweeen verbs. for e.g. : Am I doing. -- > I am doing .
#I am eating.
#  20  900   2  1          1  795   1  2         12  886   2  3          2  835  40  4         20   10   1  5
#    BOS                    I                      am                     eating                 EOS

#Am I eating?
#  20  909   1  1         12  886   2  2          1  900  33  3          2  835  40  4         20   10   9  5
#    BOS                    am                     I                      eating                 EOS

# if the sentence is interogative (BOS formfield) , then reassign the @tword and @tsal

####################################################################################

  if($tsal[0] =~ /^\s*\d+\s+(\d+)\s+\d+\s+\d+/){
    if($1 == "909"){


#Sentence is interogative, so change the tword and tsal order
      $flag_qsen=1;
      for($i=0;$i<=$#tsal;$i++){
        if(($tsal[$i] =~ /^\s*12\s+/) && ($tsal[$i+1] =~ /^\s*1\s+/)){
          $subj_sal=$tsal[$i+1];
          $subj_wd=$tword[$i+1];
          while($subj_sal =~ /^\s*1\s+/){
            $tsal[$i+1]=$tsal[$i];
            $tsal[$i]=$subj_sal;
            $tword[$i+1]=$tword[$i];
            $tword[$i]=$subj_wd;

            $i++;
            $subj_sal=$tsal[$i+1];
            $subj_wd=$tword[$i+1];
          }
        }
      }
    }
  }


  @res2d=();
  for($i=0;$i<=$#res;$i++){
    @reselm=split(/\s+/,$res[$i]);
    $res2d[$i]= [ @reselm ];
  }



  @sal2d=();
  for($i=0;$i<=$#tsal;$i++){
    @salelm=split(/\s+/,$tsal[$i]);
    $sal2d[$i]= [ @salelm ];
  }

  @scon2d_tran1=();
  for($i=0;$i<=$#scon_tran1;$i++){
    @sconelm=split(/\s+/,$scon_tran1[$i]);
    $scon2d_tran1[$i]= [ @sconelm ];
  }

  @scon2d_tran2=();
  for($i=0;$i<=$#scon_tran2;$i++){
    @sconelm=split(/\s+/,$scon_tran2[$i]);
    $scon2d_tran2[$i]= [ @sconelm ];
  }

  @scon2d_tran3=();
  for($i=0;$i<=$#scon_tran3;$i++){
    @sconelm=split(/\s+/,$scon_tran3[$i]);
    $scon2d_tran3[$i]= [ @sconelm ];
  }

  @scon2d_tran4=();
  for($i=0;$i<=$#scon_tran4;$i++){
    @sconelm=split(/\s+/,$scon_tran4[$i]);
    $scon2d_tran4[$i]= [ @sconelm ];
  }


  $count=0;
  @verb=();
############################################################


#count the number of verbs in a sentence
# logic: if word_class == 2 and (next_wd_class != 2|12)


############################################################



  for $i (0 .. $#sal2d){
#if(($sal2d[$i][0] =~ /^2$/) && ($sal2d[$i+1][0] !~ /^2$|^12$/)){
  if($sal2d[$i][0] =~ /^2$/) {
    if($sal2d[$i+1][0] !~ /^2$|^12$/){
      $verb[$count]=$i;
    }
#for handling present participle forms (e.g Running is good for health)
    elsif(($sal2d[$i+1][0] =~ /^2$/) && ($sal2d[$i][2] == "5")){
      $verb[$count]=$i;
    }
# for handling sent: I had to guess to know the answer.
    elsif(($sal2d[$i+1][0] =~ /^2$/) && (($sal2d[$i+1][2] == "28")||($sal2d[$i+1][2] == "27"))){
      $verb[$count]=$i;
    }
# for handling sent: He started running.
    elsif(($sal2d[$i+1][0] =~ /^2$/) && ($sal2d[$i+1][2] == "35")){
      $verb[$count]=$i;
    }
# for handling sent: Having finished the book, he went to school.
    elsif(($sal2d[$i][0] =~ /^12$/) && ($sal2d[$i][1] =~ /^710$/) && ($sal2d[$i][2] =~ /^5$/) &&($sal2d[$i+1][0] =~ /^2$/) && ($sal2d[$i+1][2] == "35")){
      $verb[$count]=$i;
    }
# for handling sent: The wheels of the car began to turn.
    elsif(($sal2d[$i+1][0] =~ /^2$/) && ($sal2d[$i+1][2] == "38") && ($sal2d[$i][1] != "710")){
      $verb[$count]=$i;
    }
# for handling sent: You are lucky I am here.
    elsif(($sal2d[$i][2] != "38") && ($sal2d[$i+1][0] =~ /^20$/) && ($sal2d[$i+1][1] == "10") && ($sal2d[$i+1][2] == "1")){
      $verb[$count]=$i;
    }

    $count++;
  }
}



open(NFN,"> $ARGV[0]/ol_nonfinite.dat") || die "can't open ol_nonfinite.dat\n";


@prev_ind=();
#For each verb in the sentence give it to the find_lwg function to get the lwg.
for($i=0;$i <= $#verb;$i++){
  $ind=$verb[$i];
  $word_id=$sal2d[$ind][3];

#for verb which is after a conjuction and there is no noun inbetween conjunction and this verb,  give the previous verbs lwg to this verb.
  $j=0;
  $cnj_verb=0;
  while(($sal2d[$ind-$j][0] != "1")&& ($j < $ind)){
    if(($sal2d[$ind-$j][0] == "20") && (($sal2d[$ind-$j][1] == "820") or ($sal2d[$ind-$j][1] == "828"))){
      $cnj_verb=1;
    }
    $j++;
  }
  if($cnj_verb){
    if($prev_lwg =~ /^\([^\ ]+\s+([^\ ]+)\s+([^\ ]+)\s+([^\ ]+)/){
      $root=$1;
      $mytam=$3;
    }
    if(($mytam =~ /_/)&&($mytam ne "tam_to_be_decided")){
      $mytam =~ /(.*)_([^_]+)$/;
      $myvbchnk=$1."_".$tword[$ind];
    }
    else { $myvbchnk = $tword[$ind];}
    $new_lwg="(root-verbchunk-tam-parser_chunkids $root $myvbchnk $mytam ";
    $lwg_ids=&find_lwg_id(\@res2d,\@tword,$new_lwg,$ind,@prev_conj_ind);
    $new_lwg=$new_lwg.$lwg_ids.")";

    print "$new_lwg\n";
    $cnj_verb=0;
  }
  else {

#for handling causative verbs 
#I made him make some changes in the program.
#(root-verbchunk-tam-chunkids - made ed 2)

    if ($flag_causative){
      $lwg="";
      $lwg=&find_lwg($word_id,$ind,\@prev_ind,\@tword,\@res2d,\@sal2d,\@scon2d_tran1,\@scon2d_tran2,\@scon2d_tran3,\@scon2d_tran4);
      $lwg =~ /^\([^\ ]+\s+([^\ ]+)\s+([^\ ]+)\s+([^\ ]+)\s+(.+)\)/;
      $root=$1;
      $tam=$3;
      $causative_id=$scon2d_tran3[$causative_verb[0]][10];
      
      $grp_id=$4." P".$causative_id;

      $myvbchnk1=$2."_".$res2d[$causative_id-1][35];
      $myvbchnk1 =~ /([^_]+)_([^_]+)$/;
      $root1=$VBROOT{$1};
      $root2=$VBROOT{$2};
      $causative_root=$root1."_".$root2;

      $grp_id =~ /P(\d+)\s+P(\d+)$/;
      $verb_head=$1;

      $lwg="(verb_type-verb-causative_verb-tam causative P$verb_head P$causative_id $tam)\n(root-verbchunk-tam-parser_chunkids  $causative_root $myvbchnk1 $tam $grp_id)";
      print "$lwg\n";
      $flag_causative=0;
    }
    else{

      $lwg="";
      $lwg=&find_lwg($word_id,$ind,\@prev_ind,\@tword,\@res2d,\@sal2d,\@scon2d_tran1,\@scon2d_tran2,\@scon2d_tran3,\@scon2d_tran4);
      print "$lwg\n";
      $prev_lwg=$lwg;
      @prev_conj_ind=@prev_ind;
    }
#$prev_ind=$ind;
  }
}
close(NFN);

=pod
##absorb ##
print "\tabsorbed\t";
$i=0;
$prev_wdid=1;
while($i <= $#sal2d){
  $wd_id=$sal2d[$i][3];
  while($wd_id > $prev_wdid+1){
    print "\t$res2d[$prev_wdid][35]_";
    $prev_wdid++;
  }
  $prev_wdid=$wd_id;
  $i++;	

}

## end ##

=cut

}


sub find_lwg{

  my($word_id,$ind,$refprev_ind,$reftword,$refres2d,$refsal2d,$refscon2d_tran1,$refscon2d_tran2,$refscon2d_tran3,$refscon2d_tran4)=@_;


  @prev_ind=@{$refprev_ind};
  @tword=@{$reftword};
  @res2d=@{$refres2d};
  @sal2d=@{$refsal2d};
  @scon2d_tran1=@{$refscon2d_tran1};
  @scon2d_tran2=@{$refscon2d_tran2};
  @scon2d_tran3=@{$refscon2d_tran3};
  @scon2d_tran4=@{$refscon2d_tran4};



  $flag_lwg_negation=0;
#if 460 is present in any of the scon set the negation flag in lwg.
  if(($scon2d_tran1[$word_id][30] == 460) ||($scon2d_tran2[$word_id][30] == 460) ||($scon2d_tran3[$word_id][30] == 460) ||($scon2d_tran4[$word_id][30] == 460)){
    $flag_lwg_negation=1;
  }
#other things to check for negation (todo)

# see the SCONHF of verb "OUTPUT TARGET ARRAYS IN tran3". It stores the ID of not. (e.g Fruits had to be eaten), but in (e.g. It does not matter what Ted does), it stores value "36" in SCONHF of "matter", but in this sent the 460 is present in "SCON FOR tran1".



###################
#According the form field of the verb determine the lwg.

  $form=$sal2d[$ind][2];

#Infinitive and present (plural)
  if($form == "1") {

    $lwg="(root-verbchunk-tam-parser_chunkids   - $tword[$ind] 0 P$scon2d_tran3[$sal2d[$ind][3]][10])";
return $lwg;
#$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,$prev_ind);
#$lwg=$lwg.$lwg_ids.")";


  }

  if($form == "2") {

    if(($sal2d[$ind][1] == "886")){

      $lwg="(root-verbchunk-tam-parser_chunkids   root_to_be_decided am tam_to_be_decided P$scon2d_tran3[$sal2d[$ind][3]][10])";
return $lwg;
#$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,$prev_ind);
#$lwg=$lwg.$lwg_ids.")";

    }
  }



#present (3rd person singular)
#He eats.
  if($form == "3") {

    if(($sal2d[$ind][1] == "886")){
      if ($flag_lwg_negation){


        $lwg="(root-verbchunk-tam-parser_chunkids   root_to_be_decided is tam_to_be_decided P$scon2d_tran3[$sal2d[$ind][3]][10])";
return $lwg;
#$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,$prev_ind);
#$lwg=$lwg.$lwg_ids.")";

      }
      else {

        $lwg="(root-verbchunk-tam-parser_chunkids   root_to_be_decided is tam_to_be_decided P$scon2d_tran3[$sal2d[$ind][3]][10])";
return $lwg;
#$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,$prev_ind);
#$lwg=$lwg.$lwg_ids.")";

      }
    }
    else{



      $lwg="(root-verbchunk-tam-parser_chunkids   root_to_be_decided $tword[$ind] tam_to_be_decided P$scon2d_tran3[$sal2d[$ind][3]][10])";
return $lwg;
##$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,$prev_ind);
#      #$lwg=$lwg.$lwg_ids.")";

    }

  }

  if($form == "4") {

    if(($sal2d[$ind][1] == "886")){
      if ($flag_lwg_negation){


        $lwg="(root-verbchunk-tam-parser_chunkids   root_to_be_decided are tam_to_be_decided P$scon2d_tran3[$sal2d[$ind][3]][10])";
return $lwg;
#$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,$prev_ind);
#$lwg=$lwg.$lwg_ids.")";

      }
      else {

        $lwg="(root-verbchunk-tam-parser_chunkids   root_to_be_decided are tam_to_be_decided P$scon2d_tran3[$sal2d[$ind][3]][10])";
return $lwg;
#$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,$prev_ind);
#$lwg=$lwg.$lwg_ids.")";

      }
    }

  }


#present participle
# Running is good for health.
  if($form == "5") {



=pod
      $lwg="(root-verbchunk-tam-parser_chunkids   - $tword[$ind] ing ";
    $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,$prev_ind);
    $lwg=$lwg.$lwg_ids.")";
=cut

  }


#past and past-participle
  if($form == "7") {

    $lwg="(root-verbchunk-tam-parser_chunkids   root_to_be_decided $tword[$ind] tam_to_be_decided P$scon2d_tran3[$sal2d[$ind][3]][10])";
return $lwg;
#$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,$prev_ind);
#$lwg=$lwg.$lwg_ids.")";


  }


#past and past-participle
  if($form == "10") {

    if(($sal2d[$ind][1] == "886")){
      if ($flag_lwg_negation){


       # $lwg="(root-verbchunk-tam-parser_chunkids   - was_not was_not ";
        $lwg="(root-verbchunk-tam-parser_chunkids   - was was ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
return $lwg;

      }
      else {

        $lwg="(root-verbchunk-tam-parser_chunkids   - was was ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
return $lwg;

      }
    }

    else {

      $lwg="(root-verbchunk-tam-parser_chunkids   - $tword[$ind] ed ";
      $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
      $lwg=$lwg.$lwg_ids.")";
return $lwg;

    }


  }
#were
  if($form == "13") {

    $lwg="(root-verbchunk-tam-parser_chunkids   - were were P$scon2d_tran3[$sal2d[$ind][3]][10])";
    return $lwg;
#$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,$prev_ind);
#$lwg=$lwg.$lwg_ids.")";


  }



#past and past-participle
  if($form == "15") {

    $lwg="(root-verbchunk-tam-parser_chunkids   root_to_be_decided $tword[$ind] tam_to_be_decided ";
    $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
    $lwg=$lwg.$lwg_ids.")";
return $lwg;


  }

#past and past-participle
  if($form == "16") {

    $lwg="(root-verbchunk-tam-parser_chunkids   root_to_be_decided $tword[$ind] tam_to_be_decided ";
    $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
    $lwg=$lwg.$lwg_ids.")";
return $lwg;


  }

#Infinitive  and past-participle
  if($form == "17") {

    $lwg="(root-verbchunk-tam-parser_chunkids   root_to_be_decided $tword[$ind] tam_to_be_decided ";
    $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
    $lwg=$lwg.$lwg_ids.")";
return $lwg;


  }



#past and past-participle
  if($form == "20") {

#Let us go to the market.
    if(($tword[$ind] eq "let") &&  ($sal2d[$ind+2][2] == "38")){

#Let us not go to the market.
      $word1_id=$sal2d[$ind+2][3];
      if(($scon2d_tran1[$word1_id][30] == 460) ||($scon2d_tran2[$word1_id][30] == 460) ||($scon2d_tran3[$word1_id][30] == 460) ||($scon2d_tran4[$word1_id][30] == 460)){
        $lwg="(root-verbchunk-tam-parser_chunkids   - let_not_$tword[$ind+2] let_not_0 ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
        return $lwg;
      }
      else{
        $lwg="(root-verbchunk-tam-parser_chunkids   - let_$tword[$ind+2] let_0 ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
        return $lwg;
      }
    }





    elsif (($flag_lwg_negation)&& ($sal2d[$ind-1][0] == "12") && ($sal2d[$ind-1][1] == "466")){



      $lwg="(root-verbchunk-tam-parser_chunkids   - do_not_$tword[$ind] imper_not_0 ";
      $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
      $lwg=$lwg.$lwg_ids.")";
return $lwg;


    }
    else{


      $lwg="(root-verbchunk-tam-parser_chunkids   - $tword[$ind] imper ";
      $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
      $lwg=$lwg.$lwg_ids.")";
return $lwg;


    }
  }



#present emphatic : They do eat
  if($form == "22") {

#check for not,never (They do not eat, They never eat)
    if(($sal2d[$ind-1][0] == "12") && ($sal2d[$ind-1][2] == "1") && ($flag_lwg_negation)){


      $lwg="(root-verbchunk-tam-parser_chunkids   - do_not_$tword[$ind] do_not_0 ";
      $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
      $lwg=$lwg.$lwg_ids.")";
return $lwg;



    }
    elsif(($sal2d[$ind-1][0] == "12") && ($sal2d[$ind-1][2] == "3")&& ($flag_lwg_negation)){



      $lwg="(root-verbchunk-tam-parser_chunkids   - does_not_$tword[$ind] does_not_0 ";
      $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
      $lwg=$lwg.$lwg_ids.")";
return $lwg;


    }


#without negation (They do eat)
    elsif(($sal2d[$ind-1][0] == "12") && ($sal2d[$ind-1][2] == "1")){


      $lwg="(root-verbchunk-tam-parser_chunkids   - do_$tword[$ind] do_0 ";
      $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
      $lwg=$lwg.$lwg_ids.")";
return $lwg;


    }
    elsif(($sal2d[$ind-1][0] == "12") && ($sal2d[$ind-1][2] == "3")){


      $lwg="(root-verbchunk-tam-parser_chunkids   - does_$tword[$ind] does_0 ";
      $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
      $lwg=$lwg.$lwg_ids.")";
return $lwg;


    }
  }
#past emphatic : They did eat
  if($form == "24") {

#if it is a question: Did you take your breakfast?
    if(($flag_qsen) && ($sal2d[$ind-1][0] == 12)){
      if($flag_lwg_negation){

        $lwg="(root-verbchunk-tam-parser_chunkids   - q_did_not_$tword[$ind] ed ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
return $lwg;
      }
      else{
        $lwg="(root-verbchunk-tam-parser_chunkids   - q_did_$tword[$ind] ed ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
return $lwg;
      }
    }



#check for negation
    elsif(($sal2d[$ind-1][0] == "12") && ($sal2d[$ind-1][2] == "9") && ($flag_lwg_negation)){



      $lwg="(root-verbchunk-tam-parser_chunkids   - did_not_$tword[$ind] did_not_0 ";
      $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
      $lwg=$lwg.$lwg_ids.")";
return $lwg;


    }

#without negation
    elsif(($sal2d[$ind-1][0] == "12") && ($sal2d[$ind-1][2] == "9")){


      $lwg="(root-verbchunk-tam-parser_chunkids   - did_$tword[$ind] did_0 ";
      $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
      $lwg=$lwg.$lwg_ids.")";
return $lwg;


    }
  }
#To-infinitive (unlinked to main verb)
#They forced to open the door.

# CURRENTLY NOT PRINTING THE TO_INF VALUES AS LWG NEEDS ONLY FINITE VERBS.
# TO DO: ADD NON-FINITE TAM TO THE TAM-LIST

  if($form == "27") {

    if(($res2d[$word_id-2][2] == 12)||($res2d[$word_id-2][2] == 13)){
      $nonfinite_lwg="(root-verbchunk-tam-parser_chunkids   - $res2d[$word_id-2][35]_$tword[$ind] nonfinite ";
      $lwg_ids=&find_lwg_id(\@res2d,\@tword,$nonfinite_lwg,$ind,\@prev_ind);
      $nonfinite_lwg=$nonfinite_lwg.$lwg_ids.")\n";
      print NFN "$nonfinite_lwg";

    }
    else{
      $nonfinite_lwg="(root-verbchunk-tam-parser_chunkids   - $tword[$ind] nonfinite ";
      $lwg_ids=&find_lwg_id(\@res2d,\@tword,$nonfinite_lwg,$ind,\@prev_ind);
      $nonfinite_lwg=$nonfinite_lwg.$lwg_ids.")\n";
      print NFN "$nonfinite_lwg";
    }
  }


  if($form == "28") {

    if(($res2d[$word_id-2][2] == 12)||($res2d[$word_id-2][2] == 13)){
      $nonfinite_lwg="(root-verbchunk-tam-parser_chunkids   - $res2d[$word_id-2][35]_$tword[$ind] nonfinite ";
      $lwg_ids=&find_lwg_id(\@res2d,\@tword,$nonfinite_lwg,$ind,\@prev_ind);
      $nonfinite_lwg=$nonfinite_lwg.$lwg_ids.")\n";
      print NFN "$nonfinite_lwg";

    }
    else{
      $nonfinite_lwg="(root-verbchunk-tam-parser_chunkids   - $tword[$ind] nonfinite ";
      $lwg_ids=&find_lwg_id(\@res2d,\@tword,$nonfinite_lwg,$ind,\@prev_ind);
      $nonfinite_lwg=$nonfinite_lwg.$lwg_ids.")\n";
      print NFN "$nonfinite_lwg";
    }
  }

#present modal : 

  if($form == "30") {
#present modal : They can eat
#check for negation
    if(($sal2d[$ind-1][0] == "12")  && ($sal2d[$ind-1][2] == "6")){
      if ($sal2d[$ind-1][1] == "735") {
        if($flag_lwg_negation){



          $lwg="(root-verbchunk-tam-parser_chunkids   - can_not_$tword[$ind] can_not_0 ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;


        }
        elsif($scon2d[$word_id][32] == "322"){



          $lwg="(root-verbchunk-tam-parser_chunkids   - can_never_$tword[$ind] can_never_0 ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;


        }
        else{


          $lwg="(root-verbchunk-tam-parser_chunkids   - can_$tword[$ind] can_0 ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;


        }
      }
      elsif($sal2d[$ind-1][1] == "895"){
        if($flag_lwg_negation){


          $lwg="(root-verbchunk-tam-parser_chunkids   - cannot_$tword[$ind] cannot_0 ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;


        }
      }
    }
#present modal : They may eat
#check for negation
    if(($sal2d[$ind-1][0] == "12") && ($sal2d[$ind-1][1] == "896") && ($sal2d[$ind-1][2] == "6")){ 
      if($flag_lwg_negation){



        $lwg="(root-verbchunk-tam-parser_chunkids   - may_not_$tword[$ind] may_not_0 ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
return $lwg;


      }
#without negation
      else{


        $lwg="(root-verbchunk-tam-parser_chunkids   - may_$tword[$ind] may_0 ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
return $lwg;


      }
    }
#present modal : They must eat
#check for negation
    if(($sal2d[$ind-1][0] == "12") && ($sal2d[$ind-1][1] == "897") && ($sal2d[$ind-1][2] == "6")){ 
      if ($flag_lwg_negation) {



        $lwg="(root-verbchunk-tam-parser_chunkids   - must_not_$tword[$ind] must_not_0 ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
return $lwg;


      }
#without negation
      else{


        $lwg="(root-verbchunk-tam-parser_chunkids   - must_$tword[$ind] must_0 ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
return $lwg;


      }
    }
  }

#present potential modal (could/should/would/might verb)
  if($form == "31"){

    if($sal2d[$ind-1][0] == "12"){



#could
      if($sal2d[$ind-1][1] == "948"){
        if($flag_lwg_negation){



          $lwg="(root-verbchunk-tam-parser_chunkids   - could_not_$tword[$ind] could_not_0 ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;



        }
        else{


          $lwg="(root-verbchunk-tam-parser_chunkids   - could_$tword[$ind] could_0 ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;



        }
      }


#should
      if($sal2d[$ind-1][1] == "912"){
        if($flag_lwg_negation){



          $lwg="(root-verbchunk-tam-parser_chunkids   - should_not_$tword[$ind] should_not_0 ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;



        }
        else{


          $lwg="(root-verbchunk-tam-parser_chunkids   - should_$tword[$ind] should_0 ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;



        }
      }
#would
      if($sal2d[$ind-1][1] == "887"){
        if($flag_lwg_negation){



          $lwg="(root-verbchunk-tam-parser_chunkids   - would_not_$tword[$ind] would_not_0 ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;



        }
        else{


          $lwg="(root-verbchunk-tam-parser_chunkids   - would_$tword[$ind] would_0 ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;



        }
      }
#might
      if($sal2d[$ind-1][1] == "965"){
        if($flag_lwg_negation){



          $lwg="(root-verbchunk-tam-parser_chunkids   - might_not_$tword[$ind] might_not_0 ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;



        }
        else{


          $lwg="(root-verbchunk-tam-parser_chunkids   - might_$tword[$ind] might_0 ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;



        }
      }
    }
  }
#past- modal_have_en (They can/must/may have eaten)
  if($form == "32"){	
    if($sal2d[$ind-1][0] == "12"){
#can
      if($sal2d[$ind-1][1] == "735"){
        if($flag_lwg_negation){

          $lwg="(root-verbchunk-tam-parser_chunkids   - can_not_have_$tword[$ind] can_not_have_en ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;


        }
        else{



          $lwg="(root-verbchunk-tam-parser_chunkids   - can_have_$tword[$ind] can_have_en ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;


        }
      }
#must
      if($sal2d[$ind-1][1] == "897"){
        if($flag_lwg_negation){

          $lwg="(root-verbchunk-tam-parser_chunkids   - must_not_have_$tword[$ind] must_not_have_en ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;


        }
        else{



          $lwg="(root-verbchunk-tam-parser_chunkids   - must_have_$tword[$ind] must_have_en ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;


        }
      }
#may
      if($sal2d[$ind-1][1] == "896"){
        if($flag_lwg_negation){

          $lwg="(root-verbchunk-tam-parser_chunkids   - may_not_have_$tword[$ind] may_not_have_en ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;


        }
        else{



          $lwg="(root-verbchunk-tam-parser_chunkids   - may_have_$tword[$ind] may_have_en ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;


        }
      }
    }
  }
#past-potential-modal_have_en (They could/might/should/would have eaten)
  if($form == "33"){
    if($sal2d[$ind-1][0] == "12"){
#could
      if($sal2d[$ind-1][1] == "948"){
        if($flag_lwg_negation){

          $lwg="(root-verbchunk-tam-parser_chunkids   - could_not_have_$tword[$ind] could_not_have_en ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;


        }
        else{



          $lwg="(root-verbchunk-tam-parser_chunkids   - could_have_$tword[$ind] could_have_en ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;


        }
      }
#might
      if($sal2d[$ind-1][1] == "965"){
        if($flag_lwg_negation){

          $lwg="(root-verbchunk-tam-parser_chunkids   - might_not_have_$tword[$ind] might_not_have_en ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;


        }
        else{



          $lwg="(root-verbchunk-tam-parser_chunkids   - might_have_$tword[$ind] might_have_en ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;


        }
      }
#should
      if($sal2d[$ind-1][1] == "912"){
        if($flag_lwg_negation){

          $lwg="(root-verbchunk-tam-parser_chunkids   - should_not_have_$tword[$ind] should_not_have_en ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;


        }
        else{



          $lwg="(root-verbchunk-tam-parser_chunkids   - should_have_$tword[$ind] should_have_en ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;


        }
      }
#would
      if($sal2d[$ind-1][1] == "887"){
        if($flag_lwg_negation){

          $lwg="(root-verbchunk-tam-parser_chunkids   - would_not_have_$tword[$ind] would_not_have_en ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;


        }
        else{



          $lwg="(root-verbchunk-tam-parser_chunkids   - would_have_$tword[$ind] would_have_en ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;


        }
      }
    }
  }
#will/shall_0
  if($form == "34"){
    if($sal2d[$ind-1][0] == "12"){
#will
      if($sal2d[$ind-1][1] == "894"){
        if($flag_lwg_negation){



          $lwg="(root-verbchunk-tam-parser_chunkids   - will_not_$tword[$ind] will_not_0 ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;


        }
        else{


          $lwg="(root-verbchunk-tam-parser_chunkids   - will_$tword[$ind] will_0 ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;


        }
      }
#shall
      if($sal2d[$ind-1][1] == "893"){
        if($flag_lwg_negation){



          $lwg="(root-verbchunk-tam-parser_chunkids   - shall_not_$tword[$ind] shall_not_0 ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;


        }
        else{


          $lwg="(root-verbchunk-tam-parser_chunkids   - shall_$tword[$ind] shall_0 ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;


        }
      }
    }
  }

  if($form == "35") {

    if(($res2d[$word_id-2][2] == 12)||($res2d[$word_id-2][2] == 13)){
      $nonfinite_lwg="(root-verbchunk-tam-parser_chunkids   - $res2d[$word_id-2][35]_$tword[$ind] verbal-noun ";
      $lwg_ids=&find_lwg_id(\@res2d,\@tword,$nonfinite_lwg,$ind,\@prev_ind);
      $nonfinite_lwg=$nonfinite_lwg.$lwg_ids.")\n";
      print NFN "$nonfinite_lwg";

    }
    else{
      $nonfinite_lwg="(root-verbchunk-tam-parser_chunkids   - $tword[$ind] verbal-noun ";
      $lwg_ids=&find_lwg_id(\@res2d,\@tword,$nonfinite_lwg,$ind,\@prev_ind);
      $nonfinite_lwg=$nonfinite_lwg.$lwg_ids.")\n";
      print NFN "$nonfinite_lwg";
    }
  }


#has/have_to_eat
  if($form == "38"){

#They did have to eat ( have 24 , eat 38)
    if(($sal2d[$ind-1][0] == "2")&& ($sal2d[$ind-1][1] == "710") && ($sal2d[$ind-1][2] == "24")){
      if(($sal2d[$ind-2][0] == "12") && ($sal2d[$ind-2][1] == "466") && ($sal2d[$ind-2][2] == "9")){
#They did not have to eat ( have 24 , eat 38)
        if($flag_lwg_negation){





          $lwg="(root-verbchunk-tam-parser_chunkids   - did_not_have_to_$tword[$ind] did_not_have_to_0 ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;


        }
#They did have to eat ( have 24 , eat 38)
        else{




          $lwg="(root-verbchunk-tam-parser_chunkids   - did_have_to_$tword[$ind] did_have_to_0 ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;


        }
      }
    }

#He does have to eat ( have 22 , eat 38)
    if(($sal2d[$ind-1][0] == "2")&& ($sal2d[$ind-1][1] == "710") && ($sal2d[$ind-1][2] == "22")){
      if(($sal2d[$ind-2][0] == "12") && ($sal2d[$ind-2][1] == "466")){ 
        if($sal2d[$ind-2][2] == "3"){
#He does not have to eat ( have 22 , eat 38)
          if($flag_lwg_negation){



            $lwg="(root-verbchunk-tam-parser_chunkids   - does_not_have_to_$tword[$ind] does_not_have_to_0 ";
            $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
            $lwg=$lwg.$lwg_ids.")";
return $lwg;


          }
#He does have to eat ( have 22 , eat 38)
          else{




            $lwg="(root-verbchunk-tam-parser_chunkids   - does_have_to_$tword[$ind] does_have_to_0 ";
            $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
            $lwg=$lwg.$lwg_ids.")";
return $lwg;


          }
        }
#They do have to eat ( have 22, eat 38)
        if($sal2d[$ind-2][2] == "1"){
#if(($sal2d[$ind-2][2] == "1") && ($sal2d[$ind-2][1] == "710")){
#They do not have to eat ( have 22, eat 38)
  if($flag_lwg_negation){



    $lwg="(root-verbchunk-tam-parser_chunkids   - do_not_have_to_$tword[$ind] do_not_have_to_0 ";
    $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
    $lwg=$lwg.$lwg_ids.")";
return $lwg;


  }
#They do have to eat ( have 22, eat 38)
  else{



    $lwg="(root-verbchunk-tam-parser_chunkids   - do_have_to_$tword[$ind] do_have_to_0 ";
    $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
    $lwg=$lwg.$lwg_ids.")";
return $lwg;


  }
}
}
}
elsif(($sal2d[$ind-1][0] == "2") && ($sal2d[$ind-1][1] == "710") && ($sal2d[$ind-1][2] == "1")){

  if($flag_lwg_negation){

    $lwg="(root-verbchunk-tam-parser_chunkids   - have_not_to_$tword[$ind] have_not_to_0 ";
    $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
    $lwg=$lwg.$lwg_ids.")";
return $lwg;

  }
  else {

    $lwg="(root-verbchunk-tam-parser_chunkids   - have_to_$tword[$ind] have_to_0 ";
    $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
    $lwg=$lwg.$lwg_ids.")";
return $lwg;


  }
}

elsif(($sal2d[$ind-1][0] == "2") && ($sal2d[$ind-1][2] == "7") && ($sal2d[$ind-1][1] == "710")){

  if($flag_lwg_negation){

    $lwg="(root-verbchunk-tam-parser_chunkids   - had_not_to_$tword[$ind] had_not_to_0 ";
    $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
    $lwg=$lwg.$lwg_ids.")";
return $lwg;

  }
  else {

    $lwg="(root-verbchunk-tam-parser_chunkids   - had_to_$tword[$ind] had_to_0 ";
    $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
    $lwg=$lwg.$lwg_ids.")";
return $lwg;


  }


}


#############################################################	
#They shall have to eat ( have 34, eat 38)
#They shall not have to eat ( have 34, eat 38)
#They will have to eat ( have 34, eat 38)
#They will not have to eat ( have 34, eat 38)
#They would have to eat ( have 31, eat 38)
#They would not have to eat ( have 31, eat 38)
#############################################################	

#They shall/will have to eat
if(($sal2d[$ind-1][0] == "2")&& ($sal2d[$ind-1][1] == "710") && ($sal2d[$ind-1][2] == "34")){
  if(($sal2d[$ind-2][0] == "12") && ($sal2d[$ind-2][1] == "893")){ 
#they shall not have to eat
    if($flag_lwg_negation){





      $lwg="(root-verbchunk-tam-parser_chunkids   - shall_not_have_to_$tword[$ind] shall_not_have_to_0 ";
      $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
      $lwg=$lwg.$lwg_ids.")";
return $lwg;


    }
#they shall not have to eat
    else{




      $lwg="(root-verbchunk-tam-parser_chunkids   - shall_have_to_$tword[$ind] shall_have_to_0 ";
      $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
      $lwg=$lwg.$lwg_ids.")";
return $lwg;


    }
  }
  if(($sal2d[$ind-2][0] == "12") && ($sal2d[$ind-2][1] == "894")){ 
#they will not have to eat
    if($flag_lwg_negation){





      $lwg="(root-verbchunk-tam-parser_chunkids   - will_not_have_to_$tword[$ind] will_not_have_to_0 ";
      $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
      $lwg=$lwg.$lwg_ids.")";
return $lwg;


    }
#they will have to eat
    else{




      $lwg="(root-verbchunk-tam-parser_chunkids   - will_have_to_$tword[$ind] will_have_to_0 ";
      $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
      $lwg=$lwg.$lwg_ids.")";
return $lwg;


    }
  }
}
#They would have to eat
if(($sal2d[$ind-1][0] == "2")&& ($sal2d[$ind-1][1] == "710") && ($sal2d[$ind-1][2] == "31")){
  if(($sal2d[$ind-2][0] == "12") && ($sal2d[$ind-2][1] == "887")){ 
#they would not have to eat
    if($flag_lwg_negation){





      $lwg="(root-verbchunk-tam-parser_chunkids   - would_not_have_to_$tword[$ind] would_not_have_to_0 ";
      $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
      $lwg=$lwg.$lwg_ids.")";
return $lwg;


    }
#they would have to eat
    else{




      $lwg="(root-verbchunk-tam-parser_chunkids   - would_have_to_$tword[$ind] would_have_to_0 ";
      $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
      $lwg=$lwg.$lwg_ids.")";
return $lwg;


    }
  }
}
#He has to eat (has 7, eat 38)
if($sal2d[$ind-1][0] == "2"){ 
  if(($sal2d[$ind-1][2] == "3") && ($sal2d[$ind-1][1] == "710")){
#He has not to eat ( has 3 , eat 38)
    if($flag_lwg_negation){




      $lwg="(root-verbchunk-tam-parser_chunkids   - has_not_to_$tword[$ind] has_not_to_0 ";
      $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
      $lwg=$lwg.$lwg_ids.")";
return $lwg;


    }
#He has to eat ( has 3 , eat 38)
    else{



      $lwg="(root-verbchunk-tam-parser_chunkids   - has_to_$tword[$ind] has_to_0 ";
      $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
      $lwg=$lwg.$lwg_ids.")";
return $lwg;


    }
  }
  if(($sal2d[$ind-1][2] == "1") && ($sal2d[$ind-1][1] == "710")){
#They have not to eat ( have 1, eat 38)
    if($flag_lwg_negation){




      $lwg="(root-verbchunk-tam-parser_chunkids   - have_not_to_$tword[$ind] have_not_to_0 ";
      $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
      $lwg=$lwg.$lwg_ids.")";
return $lwg;


    }
#They have to eat ( have 1, eat 38)
    else{



      $lwg="(root-verbchunk-tam-parser_chunkids   - have_to_$tword[$ind] have_to_0 ";
      $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
      $lwg=$lwg.$lwg_ids.")";
return $lwg;


    }
  }

  if(($sal2d[$ind-1][2] == "7") && ($sal2d[$ind-1][1] == "710")){
#They had not to eat ( had 7, eat 38)
    if($flag_lwg_negation){




      $lwg="(root-verbchunk-tam-parser_chunkids   - had_not_to_$tword[$ind] had_not_to_0 ";
      $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
      $lwg=$lwg.$lwg_ids.")";
return $lwg;


    }
#They had to eat ( had 1, eat 38)
    else{



      $lwg="(root-verbchunk-tam-parser_chunkids   - had_to_$tword[$ind] had_to_0 ";
      $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
      $lwg=$lwg.$lwg_ids.")";
return $lwg;


    }
  }
}
}
if($form == "39"){
#######################
# They have not to be eaten
# They have to be eaten
# They had not to be eaten
# They had to be eaten
# He has not to be eaten
# He has to be eaten
# Broken windows need to be replaced.
#	
#######################
  if($sal2d[$ind-1][0] == "12"){
    if($sal2d[$ind-2][0] == "2"){

# They have to be eaten
      if(($sal2d[$ind-2][2] == "1") && ($sal2d[$ind-2][1] == "974")){
        if($flag_lwg_negation){

          $lwg="(root-verbchunk-tam-parser_chunkids   - need_not_to_be_$tword[$ind] need_not_to_be_en ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;


        }
        else{

          $lwg="(root-verbchunk-tam-parser_chunkids   - need_to_be_$tword[$ind] need_to_be_en ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;


        }
      }
      if(($sal2d[$ind-2][2] == "1") && ($sal2d[$ind-2][1] == "710")){
        if($flag_lwg_negation){

          $lwg="(root-verbchunk-tam-parser_chunkids   - have_not_to_be_$tword[$ind] have_not_to_be_en ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;


        }
        else{

          $lwg="(root-verbchunk-tam-parser_chunkids   - have_to_be_$tword[$ind] have_to_be_en ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;


        }
      }

# He has to be eaten
      if($sal2d[$ind-2][2] == "3"){
        if($flag_lwg_negation){


          $lwg="(root-verbchunk-tam-parser_chunkids   - has_not_to_be_$tword[$ind] has_not_to_be_en ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;


        }
        else{


          $lwg="(root-verbchunk-tam-parser_chunkids   - has_to_be_$tword[$ind] has_to_be_en ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;


        }
      }
# They had to be eaten
      if($sal2d[$ind-2][2] == "7"){
        if($flag_lwg_negation){


          $lwg="(root-verbchunk-tam-parser_chunkids   - had_not_to_be_$tword[$ind] had_not_to_be_en ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;


        }
        else{

          $lwg="(root-verbchunk-tam-parser_chunkids   - had_to_be_$tword[$ind] had_to_be_en ";
          $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
          $lwg=$lwg.$lwg_ids.")";
return $lwg;


        }
      }
    }
  }
}
#	40	present-be_ing
############################
# I am eating
# I am not eating.
# They are eating.
# They are not eating.
# He is eating.
# He is not eating.
# They would be eating.
############################

if($form == "40"){
  if($sal2d[$ind-1][0] == "12"){
# I am eating
    if($sal2d[$ind-1][2] == "2"){
      if($flag_lwg_negation){



        $lwg="(root-verbchunk-tam-parser_chunkids   - am_not_$tword[$ind] am_not_ing ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
return $lwg;


      }
      else{


        $lwg="(root-verbchunk-tam-parser_chunkids   - am_$tword[$ind] am_ing ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
return $lwg;


      }
    }
# They are eating.
    if($sal2d[$ind-1][2] == "4"){
      if($flag_lwg_negation){



        $lwg="(root-verbchunk-tam-parser_chunkids   - are_not_$tword[$ind] are_not_ing ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
return $lwg;


      }
      else{


        $lwg="(root-verbchunk-tam-parser_chunkids   - are_$tword[$ind] are_ing ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
return $lwg;


      }
    }
# He is eating.
    if($sal2d[$ind-1][2] == "3"){
      if($flag_lwg_negation){



        $lwg="(root-verbchunk-tam-parser_chunkids   - is_not_$tword[$ind] is_not_ing ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
return $lwg;


      }
      else{


        $lwg="(root-verbchunk-tam-parser_chunkids   - is_$tword[$ind] is_ing ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
return $lwg;


      }
    }
# They would be eating.
    if(($sal2d[$ind-1][1] == "887")&& ($sal2d[$ind-1][2] == "6")){
      if($flag_lwg_negation){




        $lwg="(root-verbchunk-tam-parser_chunkids   - would_not_be_$tword[$ind] would_not_be_ing ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
return $lwg;


      }
      else{



        $lwg="(root-verbchunk-tam-parser_chunkids   - would_be_$tword[$ind] would_be_ing ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
return $lwg;


      }
    }
  }
}
#	42	past-be_ing
############################
# I was eating
# I was not eating.
# They were eating.
# They were not eating.
# He was eating.
# He was not eating.
############################
if($form == "42"){
  if($sal2d[$ind-1][0] == "12"){
# I was eating
    if($sal2d[$ind-1][2] == "10"){
      if($flag_lwg_negation){



        $lwg="(root-verbchunk-tam-parser_chunkids   - was_not_$tword[$ind] was_not_ing ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
return $lwg;


      }
      else{


        $lwg="(root-verbchunk-tam-parser_chunkids   - was_$tword[$ind] was_ing ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
return $lwg;


      }
    }
# They were eating.
    if($sal2d[$ind-1][2] == "13"){
      if($flag_lwg_negation){



        $lwg="(root-verbchunk-tam-parser_chunkids   - were_not_$tword[$ind] were_not_ing ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
return $lwg;


      }
      else{


        $lwg="(root-verbchunk-tam-parser_chunkids   - were_$tword[$ind] were_ing ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
return $lwg;


      }
    }
  }

}
#	43	present-potential-modal_be_ing
####################
#They might be eating.
#They should be eating.
#They could be eating.
####################
if($form == "43"){
  if($sal2d[$ind-1][0] == "12"){
#They might be eating.
    if($sal2d[$ind-1][1] == "965"){
      if($flag_lwg_negation){




        $lwg="(root-verbchunk-tam-parser_chunkids   - might_not_be_$tword[$ind] might_not_be_ing ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
return $lwg;


      }
      else{



        $lwg="(root-verbchunk-tam-parser_chunkids   - might_be_$tword[$ind] might_be_ing ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
return $lwg;


      }
    }
#They should be eating.
    if($sal2d[$ind-1][1] == "912"){
      if($flag_lwg_negation){




        $lwg="(root-verbchunk-tam-parser_chunkids   - should_not_be_$tword[$ind] should_not_be_ing ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
return $lwg;


      }
      else{



        $lwg="(root-verbchunk-tam-parser_chunkids   - should_be_$tword[$ind] should_be_ing ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
return $lwg;


      }
    }
#They could be eating.
    if($sal2d[$ind-1][1] == "948"){
      if($flag_lwg_negation){




        $lwg="(root-verbchunk-tam-parser_chunkids   - could_not_be_$tword[$ind] could_not_be_ing ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
return $lwg;


      }
      else{



        $lwg="(root-verbchunk-tam-parser_chunkids   - could_be_$tword[$ind] could_be_ing ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
return $lwg;


      }
    }
  }
}
#	44	has/have_been_ing
###########################
# They could have been eating.
# They may have been eating.
# They might have been eating.
# They must have been eating.
# They should have been eating.
# They could have been eating.
# They have been eating.
# They have not been eating.
# He has been eating.
# He has not been eating.
###########################
if($form == "44"){
# They could have been eating.
  if(($sal2d[$ind-2][0] == "12")&&($sal2d[$ind-2][1] == "948")&&($sal2d[$ind-1][0] == "12")){

    $lwg="(root-verbchunk-tam-parser_chunkids   - could_have_been_$tword[$ind] could_have_been_ing ";
    $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
    $lwg=$lwg.$lwg_ids.")";
return $lwg;


  }
# They could not have been eating.
  elsif(($sal2d[$ind-3][0] == "12")&&($sal2d[$ind-3][1] == "948")&&($sal2d[$ind-2][0] == "1")&&($sal2d[$ind-2][1] == "853")){

    $lwg="(root-verbchunk-tam-parser_chunkids   - could_not_have_been_$tword[$ind] could_not_have_been_ing ";
    $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
    $lwg=$lwg.$lwg_ids.")";
return $lwg;


  }

# They may have been eating.
  elsif(($sal2d[$ind-2][0] == "12")&&($sal2d[$ind-2][1] == "896")&&($sal2d[$ind-1][0] == "12")){


    $lwg="(root-verbchunk-tam-parser_chunkids   - may_have_been_$tword[$ind] may_have_been_ing ";
    $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
    $lwg=$lwg.$lwg_ids.")";
return $lwg;

  }
# They may not have been eating.
  elsif(($sal2d[$ind-3][0] == "12")&&($sal2d[$ind-3][1] == "896")&&($sal2d[$ind-2][0] == "1")&&($sal2d[$ind-2][1] == "853")){


    $lwg="(root-verbchunk-tam-parser_chunkids   - may_not_have_been_$tword[$ind] may_not_have_been_ing ";
    $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
    $lwg=$lwg.$lwg_ids.")";
return $lwg;

  }


# They might have been eating.
  elsif(($sal2d[$ind-2][0] == "12")&&($sal2d[$ind-2][1] == "965")&&($sal2d[$ind-1][0] == "12")){

    $lwg="(root-verbchunk-tam-parser_chunkids   - might_have_been_$tword[$ind] might_have_been_ing ";
    $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
    $lwg=$lwg.$lwg_ids.")";
return $lwg;

  }
# They might not have been eating.
  elsif(($sal2d[$ind-3][0] == "12")&&($sal2d[$ind-3][1] == "965")&&($sal2d[$ind-2][0] == "1")&&($sal2d[$ind-2][1] == "853")){

    $lwg="(root-verbchunk-tam-parser_chunkids   - might_not_have_been_$tword[$ind] might_not_have_been_ing ";
    $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
    $lwg=$lwg.$lwg_ids.")";
return $lwg;


  }


# They must have been eating.
  elsif(($sal2d[$ind-2][0] == "12")&&($sal2d[$ind-2][1] == "897")&&($sal2d[$ind-1][0] == "12")){


    $lwg="(root-verbchunk-tam-parser_chunkids   - must_have_been_$tword[$ind] must_have_been_ing ";
    $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
    $lwg=$lwg.$lwg_ids.")";
return $lwg;


  }
# They must not have been eating.
  elsif(($sal2d[$ind-3][0] == "12")&&($sal2d[$ind-3][1] == "897")&&($sal2d[$ind-2][0] == "1")&&($sal2d[$ind-2][1] == "853")){



    $lwg="(root-verbchunk-tam-parser_chunkids   - must_not_have_been_$tword[$ind] must_not_have_been_ing ";
    $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
    $lwg=$lwg.$lwg_ids.")";
return $lwg;


  }


# They should have been eating.
  elsif(($sal2d[$ind-2][0] == "12")&&($sal2d[$ind-2][1] == "912")&&($sal2d[$ind-1][0] == "12")){ 

    $lwg="(root-verbchunk-tam-parser_chunkids   - should_have_been_$tword[$ind] should_have_been_ing ";
    $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
    $lwg=$lwg.$lwg_ids.")";
return $lwg;


  }

# They should not have been eating.
  elsif(($sal2d[$ind-3][0] == "12")&&($sal2d[$ind-3][1] == "912")&&($sal2d[$ind-2][0] == "1")&&($sal2d[$ind-2][1] == "853")){


    $lwg="(root-verbchunk-tam-parser_chunkids   - should_not_have_been_$tword[$ind] should_not_have_been_ing ";
    $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
    $lwg=$lwg.$lwg_ids.")";
return $lwg;


  }

# They have been eating.
  elsif($sal2d[$ind-1][0] == "12"){
    if($sal2d[$ind-1][2] == "1"){
      if($flag_lwg_negation){


        $lwg="(root-verbchunk-tam-parser_chunkids   - have_not_been_$tword[$ind] have_not_been_ing  ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
return $lwg;
      }
      else{


        $lwg="(root-verbchunk-tam-parser_chunkids   - have_been_$tword[$ind] have_been_ing   ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
return $lwg;

      }
    }

# He has been eating.
    if($sal2d[$ind-1][2] == "3"){
      if($flag_lwg_negation){


        $lwg="(root-verbchunk-tam-parser_chunkids   - has_not_been_$tword[$ind] has_not_been_ing  ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
return $lwg;
      }
# He has not been eating.
      else{

        $lwg="(root-verbchunk-tam-parser_chunkids   - has_been_$tword[$ind] has_been_ing   ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
return $lwg;

      }
    }
  }
}


#	46	had_been_ing
###########################
# They could had been eating.
# They may had been eating.
# They might had been eating.
# They must had been eating.
# They should had been eating.
# They could had been eating.
# They had been eating.
# They had not been eating.
# He had been eating.
# He had not been eating.
###########################
if($form == "46"){
# They could had been eating.
  if(($sal2d[$ind-2][0] == "12")&& ($sal2d[$ind-2][1] == "948")&& ($sal2d[$ind-1][0] == "12")){


    $lwg="(root-verbchunk-tam-parser_chunkids   - could_had_been_$tword[$ind] could_had_been_ing ";
    $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
    $lwg=$lwg.$lwg_ids.")";
return $lwg;


  }
# They could not had been eating.
  elsif(($sal2d[$ind-3][0] == "12")&& ($sal2d[$ind-3][1] == "948")&& ($sal2d[$ind-2][0] == "1")&&($sal2d[$ind-2][1] == "853")){


    $lwg="(root-verbchunk-tam-parser_chunkids   - could_not_had_been_$tword[$ind] could_not_had_been_ing ";
    $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
    $lwg=$lwg.$lwg_ids.")";
return $lwg;


  }


# They may had been eating.
  elsif(($sal2d[$ind-2][0] == "12")&& ($sal2d[$ind-2][1] == "896")&& ($sal2d[$ind-1][0] == "12")){


    $lwg="(root-verbchunk-tam-parser_chunkids   - may_had_been_$tword[$ind] may_had_been_ing ";
    $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
    $lwg=$lwg.$lwg_ids.")";
return $lwg;


  }
# They may not had been eating.
  elsif(($sal2d[$ind-3][0] == "12")&& ($sal2d[$ind-3][1] == "896")&& ($sal2d[$ind-2][0] == "1")&&($sal2d[$ind-2][1] == "853")){



    $lwg="(root-verbchunk-tam-parser_chunkids   - may_not_had_been_$tword[$ind] may_not_had_been_ing ";
    $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
    $lwg=$lwg.$lwg_ids.")";
return $lwg;


  }



# They might had been eating.
  elsif(($sal2d[$ind-2][0] == "12")&& ($sal2d[$ind-2][1] == "965")&& ($sal2d[$ind-1][0] == "12")){


    $lwg="(root-verbchunk-tam-parser_chunkids   - might_had_been_$tword[$ind] might_had_been_ing ";
    $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
    $lwg=$lwg.$lwg_ids.")";
return $lwg;


  }
# They might not had been eating.
  elsif(($sal2d[$ind-3][0] == "12")&& ($sal2d[$ind-3][1] == "965")&& ($sal2d[$ind-2][0] == "1")&&($sal2d[$ind-2][1] == "853")){


    $lwg="(root-verbchunk-tam-parser_chunkids   - might_not_had_been_$tword[$ind] might_not_had_been_ing ";
    $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
    $lwg=$lwg.$lwg_ids.")";
return $lwg;


  }


# They must had been eating.
  elsif(($sal2d[$ind-2][0] == "12")&& ($sal2d[$ind-2][1] == "897")&& ($sal2d[$ind-1][0] == "12")){


    $lwg="(root-verbchunk-tam-parser_chunkids   - must_had_been_$tword[$ind] must_had_been_ing ";
    $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
    $lwg=$lwg.$lwg_ids.")";
return $lwg;


  }
# They must not had been eating.
  elsif(($sal2d[$ind-3][0] == "12")&& ($sal2d[$ind-3][1] == "897")&& ($sal2d[$ind-2][0] == "1")&&($sal2d[$ind-2][1] == "853")){

    $lwg="(root-verbchunk-tam-parser_chunkids   - must_not_had_been_$tword[$ind] must_not_had_been_ing ";
    $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
    $lwg=$lwg.$lwg_ids.")";
return $lwg;


  }



# They should had been eating.
  elsif(($sal2d[$ind-2][0] == "12")&& ($sal2d[$ind-2][1] == "912")&& ($sal2d[$ind-1][0] == "12")){

    $lwg="(root-verbchunk-tam-parser_chunkids   - should_had_been_$tword[$ind] should_had_been_ing ";
    $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
    $lwg=$lwg.$lwg_ids.")";
return $lwg;


  }
# They should not had been eating.
  elsif(($sal2d[$ind-3][0] == "12")&& ($sal2d[$ind-3][1] == "912")&& ($sal2d[$ind-2][0] == "1")&&($sal2d[$ind-2][1] == "853")){



    $lwg="(root-verbchunk-tam-parser_chunkids   - should_not_had_been_$tword[$ind] should_not_had_been_ing ";
    $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
    $lwg=$lwg.$lwg_ids.")";
return $lwg;


  }
# They had been eating. 

  elsif($sal2d[$ind-1][0] == "12"){
    if ($sal2d[$ind-1][2] == "1"){
      if($flag_lwg_negation){


        $lwg="(root-verbchunk-tam-parser_chunkids   - had_not_been_$tword[$ind] had_not_been_ing  ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
return $lwg;
      }
      else{


        $lwg="(root-verbchunk-tam-parser_chunkids   - had_been_$tword[$ind] had_been_ing   ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
return $lwg;

      }
    }
# They had been eating.
    if($sal2d[$ind-1][2] == "7"){
      if($flag_lwg_negation){


        $lwg="(root-verbchunk-tam-parser_chunkids   - had_not_been_$tword[$ind] had_not_been_ing  ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
return $lwg;
      }
      else{


        $lwg="(root-verbchunk-tam-parser_chunkids   - had_been_$tword[$ind] had_been_ing   ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
return $lwg;

      }
    }


# He had been eating.
    if($sal2d[$ind-1][2] == "3"){
      if($flag_lwg_negation){


        $lwg="(root-verbchunk-tam-parser_chunkids   - had_not_been_$tword[$ind] had_not_been_ing  ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
return $lwg;
      }
# He had not been eating.
      else{

        $lwg="(root-verbchunk-tam-parser_chunkids   - had_been_$tword[$ind] had_been_ing   ";
        $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
        $lwg=$lwg.$lwg_ids.")";
return $lwg;

      }
    }
  }
}



#	48	will/shall_be_ing
##########################################
# They will be eating.
# They will not be eating.
#
##########################################
if ($form == "48"){
  if(($sal2d[$ind-1][0] == "12")&&($sal2d[$ind-1][1] == "894")){
    if($flag_lwg_negation){

      $lwg="(root-verbchunk-tam-parser_chunkids   - will_not_be_$tword[$ind] will_not_be_ing ";
      $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
      $lwg=$lwg.$lwg_ids.")";
return $lwg;


    }
    else{



      $lwg="(root-verbchunk-tam-parser_chunkids   - will_be_$tword[$ind] will_be_ing ";
      $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
      $lwg=$lwg.$lwg_ids.")";
return $lwg;


    }
  }
}
#	54	has/have_en
##############################
# He has eaten
# He has not eaten
# He has never eaten
# They have eaten
# They have not eaten
# They have never eaten
# They must have not eaten
##############################
if($form == "54"){
  if($sal2d[$ind-1][0] == "12"){
#Having finished the book, he went to school.

	  if(($sal2d[$ind-1][2] == "5") && ($sal2d[$ind-1][1] == "710")) {
		  if($flag_lwg_negation){


		  }
		  else{

			  $lwg="(root-verbchunk-tam-parser_chunkids   - having_$tword[$ind] having_en ";
			  $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
			  $lwg=$lwg.$lwg_ids.")";
			  return $lwg;
		  }
	  }
# He has eaten
	  elsif($sal2d[$ind-1][2] == "3"){
# He has not eaten
		  if($flag_lwg_negation){



			  $lwg="(root-verbchunk-tam-parser_chunkids   - has_not_$tword[$ind] has_not_en ";
			  $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
			  $lwg=$lwg.$lwg_ids.")";
			  return $lwg;


		  }
# He has never eaten
		  elsif($scon2d[$word_id][33] == "322"){



			  $lwg="(root-verbchunk-tam-parser_chunkids   - has_never_$tword[$ind] has_never_en ";
			  $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
			  $lwg=$lwg.$lwg_ids.")";
			  return $lwg;


		  }
# He has eaten
		  else{


			  $lwg="(root-verbchunk-tam-parser_chunkids   - has_$tword[$ind] has_en ";
			  $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
			  $lwg=$lwg.$lwg_ids.")";
			  return $lwg;


		  }

	  }
# They must have not eaten
	  if(($sal2d[$ind-2][0] == "12") && ($sal2d[$ind-2][1] == "897")){
		  if($sal2d[$ind-1][2] == "1"){
# They must_have not eaten
			  if($flag_lwg_negation){




				  $lwg="(root-verbchunk-tam-parser_chunkids   - must_have_not_$tword[$ind] must_have_not_en ";
				  $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				  $lwg=$lwg.$lwg_ids.")";
				  return $lwg;


			  }
# They must_have never eaten
			  elsif($scon2d[$word_id][33] == "322"){




				  $lwg="(root-verbchunk-tam-parser_chunkids   - must_have_never_$tword[$ind] must_have_never_en ";
				  $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				  $lwg=$lwg.$lwg_ids.")";
				  return $lwg;


			  }
# They must_have eaten
			  else{



				  $lwg="(root-verbchunk-tam-parser_chunkids   - must_have_$tword[$ind] must_have_en ";
				  $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				  $lwg=$lwg.$lwg_ids.")";
				  return $lwg;


			  }
		  }
	  }
	  else{
		  if($sal2d[$ind-1][2] == "1"){
# They have not eaten
			  if($flag_lwg_negation){



				  $lwg="(root-verbchunk-tam-parser_chunkids   - have_not_$tword[$ind] have_not_en ";
				  $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				  $lwg=$lwg.$lwg_ids.")";
				  return $lwg;


			  }
# They have never eaten
			  elsif($scon2d[$word_id][33] == "322"){



				  $lwg="(root-verbchunk-tam-parser_chunkids   - have_never_$tword[$ind] have_never_en ";
				  $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				  $lwg=$lwg.$lwg_ids.")";
				  return $lwg;


			  }
# They have eaten
			  else{


				  $lwg="(root-verbchunk-tam-parser_chunkids   - have_$tword[$ind] have_en ";
				  $lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				  $lwg=$lwg.$lwg_ids.")";
				  return $lwg;


			  }
		  }
	  }
  }


}

#	56	had_en
##############################
# He had eaten
# He had not eaten
# He had never eaten
# They had eaten
# They had not eaten
# They had never eaten
# They must had not eaten
##############################
if($form == "56"){
	if($sal2d[$ind-1][0] == "12"){
# He had eaten
		if($sal2d[$ind-1][2] == "7"){
# He had not eaten
			if($flag_lwg_negation){



				$lwg="(root-verbchunk-tam-parser_chunkids   - had_not_$tword[$ind] had_not_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
# He had never eaten
			elsif($scon2d[$word_id][33] == "322"){



				$lwg="(root-verbchunk-tam-parser_chunkids   - had_never_$tword[$ind] had_never_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
# He had eaten
			else{


				$lwg="(root-verbchunk-tam-parser_chunkids   - had_$tword[$ind] had_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}

		}
# They must had not eaten
		if(($sal2d[$ind-2][0] == "12") && ($sal2d[$ind-2][1] == "897")){
			if($sal2d[$ind-1][2] == "7"){
# They must_had not eaten
				if($flag_lwg_negation){




					$lwg="(root-verbchunk-tam-parser_chunkids   - must_had_not_$tword[$ind] must_had_not_en ";
					$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
					$lwg=$lwg.$lwg_ids.")";
					return $lwg;


				}
# They must_had never eaten
				elsif($scon2d[$word_id][33] == "322"){




					$lwg="(root-verbchunk-tam-parser_chunkids   - must_had_never_$tword[$ind] must_had_never_en ";
					$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
					$lwg=$lwg.$lwg_ids.")";
					return $lwg;


				}
# They must_had eaten
				else{



					$lwg="(root-verbchunk-tam-parser_chunkids   - must_had_$tword[$ind] must_had_en ";
					$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
					$lwg=$lwg.$lwg_ids.")";
					return $lwg;


				}
			}
		}
		else{
			if($sal2d[$ind-1][2] == "7"){
# They had not eaten
				if($flag_lwg_negation){



					$lwg="(root-verbchunk-tam-parser_chunkids   - had_not_$tword[$ind] had_not_en ";
					$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
					$lwg=$lwg.$lwg_ids.")";
					return $lwg;


				}
# They had never eaten
				elsif($scon2d[$word_id][33] == "322"){



					$lwg="(root-verbchunk-tam-parser_chunkids   - had_never_$tword[$ind] had_never_en ";
					$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
					$lwg=$lwg.$lwg_ids.")";
					return $lwg;


				}
# They had eaten
				else{


					$lwg="(root-verbchunk-tam-parser_chunkids   - had_$tword[$ind] had_en ";
					$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
					$lwg=$lwg.$lwg_ids.")";
					return $lwg;


				}
			}
		}
	}


}


#	60	present-modal_be_en
#################################
# They can be eaten	
# They can not be eaten	
# They cannot be eaten	
# They may be eaten	
# They may not be eaten	
# They must be eaten	
# They must not be eaten	
#################################
if($form == "60"){
	if($sal2d[$ind-1][0] == "12"){
# They can be eaten	
		if($sal2d[$ind-1][1] == "735"){
			if($flag_lwg_negation){




				$lwg="(root-verbchunk-tam-parser_chunkids   - can_not_be_$tword[$ind] can_not_be_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
			else{



				$lwg="(root-verbchunk-tam-parser_chunkids   - can_be_$tword[$ind] can_be_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
		}
# They cannot be eaten	
		if($sal2d[$ind-1][1] == "895"){
			if($flag_lwg_negation){



				$lwg="(root-verbchunk-tam-parser_chunkids   - cannot_be_$tword[$ind] cannot_be_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
		}
# They may be eaten	
		if($sal2d[$ind-1][1] == "896"){
			if($flag_lwg_negation){




				$lwg="(root-verbchunk-tam-parser_chunkids   - may_not_be_$tword[$ind] may_not_be_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
			else{



				$lwg="(root-verbchunk-tam-parser_chunkids   - may_be_$tword[$ind] may_be_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
		}
# They must be eaten	
		if($sal2d[$ind-1][1] == "897"){
			if($flag_lwg_negation){




				$lwg="(root-verbchunk-tam-parser_chunkids   - must_not_be_$tword[$ind] must_not_be_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
			else{



				$lwg="(root-verbchunk-tam-parser_chunkids   - must_be_$tword[$ind] must_be_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
		}
	}
}
#	61	present-potential-modal_be_en
#######################################
# They could be eaten.
# They could not be eaten.
# They might be eaten.
# They might not be eaten.
# They ought to be eaten.
# They ought not to be eaten.
# They should be eaten.
# They should not be eaten.
# They would be eaten.
# They would not be eaten.
#######################################
if($form == "61"){
	if($sal2d[$ind-1][0] == "12"){
# They could be eaten.
		if($sal2d[$ind-1][1] == "948"){
			if($flag_lwg_negation){




				$lwg="(root-verbchunk-tam-parser_chunkids   - could_not_be_$tword[$ind] could_not_be_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
			else{



				$lwg="(root-verbchunk-tam-parser_chunkids   - could_be_$tword[$ind] could_be_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
		}
# They might be eaten.
		if($sal2d[$ind-1][1] == "965"){
			if($flag_lwg_negation){




				$lwg="(root-verbchunk-tam-parser_chunkids   - might_not_be_$tword[$ind] might_not_be_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
			else{



				$lwg="(root-verbchunk-tam-parser_chunkids   - might_be_$tword[$ind] might_be_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
		}
# They should be eaten.
		if($sal2d[$ind-1][1] == "912"){
			if($flag_lwg_negation){




				$lwg="(root-verbchunk-tam-parser_chunkids   - should_not_be_$tword[$ind] should_not_be_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
			else{



				$lwg="(root-verbchunk-tam-parser_chunkids   - should_be_$tword[$ind] should_be_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
		}
# They would be eaten.
		if($sal2d[$ind-1][1] == "887"){
			if($flag_lwg_negation){




				$lwg="(root-verbchunk-tam-parser_chunkids   - would_not_be_$tword[$ind] would_not_be_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
			else{



				$lwg="(root-verbchunk-tam-parser_chunkids   - would_be_$tword[$ind] would_be_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
		}
	}
}
#	62	past-modal_have_been_en	
###################################
# They may have been eaten.
# They may not have been eaten.
# They must have been eaten.
# They must not have been eaten.
###################################
if($form == "62"){
	if($sal2d[$ind-1][0] == "12"){
# They may have been eaten.
		if($sal2d[$ind-1][1] == "896"){
			if($flag_lwg_negation){





				$lwg="(root-verbchunk-tam-parser_chunkids   - may_not_have_been_$tword[$ind] may_not_have_been_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
			else{




				$lwg="(root-verbchunk-tam-parser_chunkids   - may_have_been_$tword[$ind] may_have_been_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
		}
# They must have been eaten.
		if($sal2d[$ind-1][1] == "897"){
			if($flag_lwg_negation){





				$lwg="(root-verbchunk-tam-parser_chunkids   - must_not_have_been_$tword[$ind] must_not_have_been_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
			else{




				$lwg="(root-verbchunk-tam-parser_chunkids   - must_have_been_$tword[$ind] must_have_been_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
		}
	}
}
#	63	past-potential-modal_have_been_en
###############################################
#	They could have been eaten.
#	They could not have been eaten.
#	They should have been eaten.
#	They should have been eaten.
#	They would have been eaten.
#	They would not have been eaten.
###############################################
if($form == "63"){
	if($sal2d[$ind-1][0] == "12"){
#	They could have been eaten.
		if($sal2d[$ind-1][1] == "948"){
			if($flag_lwg_negation){





				$lwg="(root-verbchunk-tam-parser_chunkids   - could_not_have_been_$tword[$ind] could_not_have_been_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
			else{




				$lwg="(root-verbchunk-tam-parser_chunkids   - could_have_been_$tword[$ind] could_have_been_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
		}
#	They should have been eaten.
		if($sal2d[$ind-1][1] == "912"){
			if($flag_lwg_negation){





				$lwg="(root-verbchunk-tam-parser_chunkids   - should_not_have_been_$tword[$ind] should_not_have_been_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
			else{




				$lwg="(root-verbchunk-tam-parser_chunkids   - should_have_been_$tword[$ind] should_have_been_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
		}
#	They should have been eaten.
		if($sal2d[$ind-1][1] == "887"){
			if($flag_lwg_negation){





				$lwg="(root-verbchunk-tam-parser_chunkids   - would_not_have_been_$tword[$ind] would_not_have_been_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
			else{




				$lwg="(root-verbchunk-tam-parser_chunkids   - would_have_been_$tword[$ind] would_have_been_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
		}
	}

}
#	64	be_to_be_en
#################################
#	
#I am to be eaten.
#I am not to be eaten.
#They are to be eaten.
#They are not to be eaten.
#  He is never to be eaten.
#  He is to be eaten. 
#  He is not to be eaten. 
# He was to be eaten. 
# He was not to be eaten. 
# They were to be eaten.
# They were not to be eaten.
#################################
if($form == "64"){
	if($sal2d[$ind-1][0] == "12"){
#I am to be eaten.
		if(($sal2d[$ind-1][1] == "886") && ($sal2d[$ind-1][2] == "2")){
			if($flag_lwg_negation){





				$lwg="(root-verbchunk-tam-parser_chunkids   - am_not_to_be_$tword[$ind] am_not_to_be_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
			else{




				$lwg="(root-verbchunk-tam-parser_chunkids   - am_to_be_$tword[$ind] am_to_be_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
		}
#They are to be eaten.
		if(($sal2d[$ind-1][1] == "886") && ($sal2d[$ind-1][2] == "4")){
			if($flag_lwg_negation){





				$lwg="(root-verbchunk-tam-parser_chunkids   - are_not_to_be_$tword[$ind] are_not_to_be_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
			else{




				$lwg="(root-verbchunk-tam-parser_chunkids   - are_to_be_$tword[$ind] are_to_be_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
		}
#  This task is to be done by tomorrow.
		if(($sal2d[$ind-1][1] == "886") && ($sal2d[$ind-1][2] == "3")){
#  This task is not to be done by tomorrow.
			if($flag_lwg_negation){





				$lwg="(root-verbchunk-tam-parser_chunkids   - is_not_to_be_$tword[$ind] is_not_to_be_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
#  This task is never to be done by tomorrow.
			elsif($scon2d[$word_id][33] == "322"){





				$lwg="(root-verbchunk-tam-parser_chunkids   - is_never_to_be_$tword[$ind] is_never_to_be_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
#  This task is to be done by tomorrow.
			else{




				$lwg="(root-verbchunk-tam-parser_chunkids   - is_to_be_$tword[$ind] is_to_be_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
		}
#  This task was to be done by tomorrow.
		if(($sal2d[$ind-1][1] == "886") && ($sal2d[$ind-1][2] == "10")){
			if($flag_lwg_negation){





				$lwg="(root-verbchunk-tam-parser_chunkids   - was_not_to_be_$tword[$ind] was_not_to_be_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
			else{




				$lwg="(root-verbchunk-tam-parser_chunkids   - was_to_be_$tword[$ind] was_to_be_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
		}
#  This tasks were to be done by tomorrow.
		if(($sal2d[$ind-1][1] == "886") && ($sal2d[$ind-1][2] == "13")){
			if($flag_lwg_negation){





				$lwg="(root-verbchunk-tam-parser_chunkids   - were_not_to_be_$tword[$ind] were_not_to_be_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
			else{




				$lwg="(root-verbchunk-tam-parser_chunkids   - were_to_be_$tword[$ind] were_to_be_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
		}
	}
}
#	70	be_being_en
###################################
#I am being eaten.
#I am not being eaten.
#They are being eaten.
#They are not being eaten.
#He is being eaten.
#He is not being eaten.
###################################
if($form == "70"){
	if($sal2d[$ind-1][0] == "12"){
#I am being eaten.
		if(($sal2d[$ind-1][1] == "886") && ($sal2d[$ind-1][2] == "2")){
			if($flag_lwg_negation){




				$lwg="(root-verbchunk-tam-parser_chunkids   - am_not_being_$tword[$ind] am_not_being_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
			else{



				$lwg="(root-verbchunk-tam-parser_chunkids   - am_being_$tword[$ind] am_being_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
		}
#They are being eaten.
		if(($sal2d[$ind-1][1] == "886") && ($sal2d[$ind-1][2] == "4")){
			if($flag_lwg_negation){




				$lwg="(root-verbchunk-tam-parser_chunkids   - are_not_being_$tword[$ind] are_not_being_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
			else{



				$lwg="(root-verbchunk-tam-parser_chunkids   - are_being_$tword[$ind] are_being_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
		}
#He is being eaten.
		if(($sal2d[$ind-1][1] == "886") && ($sal2d[$ind-1][2] == "3")){
#  He is not to be eaten. 
			if($flag_lwg_negation){




				$lwg="(root-verbchunk-tam-parser_chunkids   - is_not_being_$tword[$ind] is_not_being_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
#  He is to be eaten. 
			else{



				$lwg="(root-verbchunk-tam-parser_chunkids   - is_being_$tword[$ind] is_being_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
		}
	}
}


#	71	e.g A pen used by Mahatma Gandhi is kept in the museum for display.


if($form == "71"){

	$lwg="(root-verbchunk-tam-parser_chunkids   root_to_be_decided $tword[$ind] tam_to_be_decided ";
	$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
	$lwg=$lwg.$lwg_ids.")";
	return $lwg;
}




#	72	(past)be_being_en
###################################
#They were being eaten.
#They were not being eaten.
#He was being eaten.
#He was not being eaten.
###################################
if($form == "72"){
# He was to be eaten. 
	if(($sal2d[$ind-1][1] == "886") && ($sal2d[$ind-1][2] == "10")){
		if($flag_lwg_negation){




			$lwg="(root-verbchunk-tam-parser_chunkids   - was_not_being_$tword[$ind] was_not_being_en ";
			$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
			$lwg=$lwg.$lwg_ids.")";
			return $lwg;


		}
		else{



			$lwg="(root-verbchunk-tam-parser_chunkids   - was_being_$tword[$ind] was_being_en ";
			$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
			$lwg=$lwg.$lwg_ids.")";
			return $lwg;


		}
	}
# They were to be eaten.
	if(($sal2d[$ind-1][1] == "886") && ($sal2d[$ind-1][2] == "13")){
		if($flag_lwg_negation){




			$lwg="(root-verbchunk-tam-parser_chunkids   - were_not_being_$tword[$ind] were_not_being_en ";
			$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
			$lwg=$lwg.$lwg_ids.")";
			return $lwg;


		}
		else{



			$lwg="(root-verbchunk-tam-parser_chunkids   - were_being_$tword[$ind] were_being_en ";
			$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
			$lwg=$lwg.$lwg_ids.")";
			return $lwg;


		}
	}
}
#	74	whill/shall_be_en
################################
# They shall be eaten 
# They shall not be eaten 
# They will be eaten 
# They will not be eaten 
################################
if($form == "74"){
	if($sal2d[$ind-1][0] == "12") {
		if($sal2d[$ind-1][1] == "894"){
			if($flag_lwg_negation){




				$lwg="(root-verbchunk-tam-parser_chunkids   - will_not_be_$tword[$ind] will_not_be_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
			else{



				$lwg="(root-verbchunk-tam-parser_chunkids   - will_be_$tword[$ind] will_be_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
		}
		if($sal2d[$ind-1][1] == "893"){
			if($flag_lwg_negation){




				$lwg="(root-verbchunk-tam-parser_chunkids   - shall_not_be_$tword[$ind] shall_not_be_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
			else{



				$lwg="(root-verbchunk-tam-parser_chunkids   - shall_be_$tword[$ind] shall_be_en ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;


			}
		}
	}
}
#	80	(present)be_en
##############################
# I am eaten.
# I am not eaten.
# They are eaten.
# They are not eaten.
# Ram always gets beaten by Shyam.
# They get eaten.
# They get not eaten.
# They got eaten.
# The job is done.
# The job is not done.
#the tam here is ambigous (e.g The window pan is broken) (tam is not "is_en" only "is")
##############################
if($form == "80"){
	if($sal2d[$ind-1][0] == "12"){
		if($sal2d[$ind-1][1] == "886"){


#Kennedy got killed.
			if(($sal2d[$ind-1][2] == "7") && ($tword[$ind-1] == "got")){

				$lwg="(root-verbchunk-tam-parser_chunkids root_to_be_decided got_$tword[$ind] tam_to_be_decided ";
				$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
				$lwg=$lwg.$lwg_ids.")";
				return $lwg;

			}



# I am eaten.
			elsif($sal2d[$ind-1][2] == "2"){
				if($flag_lwg_negation){



					$lwg="(root-verbchunk-tam-parser_chunkids root_to_be_decided am_not_$tword[$ind] tam_to_be_decided ";
					$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
					$lwg=$lwg.$lwg_ids.")";
					return $lwg;



				}
				else{


					$lwg="(root-verbchunk-tam-parser_chunkids root_to_be_decided am_$tword[$ind] tam_to_be_decided ";
					$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
					$lwg=$lwg.$lwg_ids.")";
					return $lwg;


				}
			}	
# They are eaten.
			elsif($sal2d[$ind-1][2] == "4"){
				if($flag_lwg_negation){



					$lwg="(root-verbchunk-tam-parser_chunkids   root_to_be_decided are_not_$tword[$ind] tam_to_be_decided ";
					$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
					$lwg=$lwg.$lwg_ids.")";
					return $lwg;



				}
				else{


					$lwg="(root-verbchunk-tam-parser_chunkids   root_to_be_decided are_$tword[$ind] tam_to_be_decided ";
					$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
					$lwg=$lwg.$lwg_ids.")";
					return $lwg;


				}
			}
# The job is done.
			elsif($sal2d[$ind-1][2] == "3"){
				if($flag_lwg_negation){



					$lwg="(root-verbchunk-tam-parser_chunkids   root_to_be_decided is_not_$tword[$ind] tam_to_be_decided ";
					$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
					$lwg=$lwg.$lwg_ids.")";
					return $lwg;



				}
				else{


					$lwg="(root-verbchunk-tam-parser_chunkids   root_to_be_decided is_$tword[$ind] tam_to_be_decided ";
					$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
					$lwg=$lwg.$lwg_ids.")";
					return $lwg;


				}
			}
		}
	}
}
#	82	(past)be_en
##############################
# I was eaten.
# I was not eaten.
# They were eaten.
# They were not eaten.

#the tam here is ambigous (e.g The window pan was broken) (tam is not "was_en" only "was")
# but in (e.g The window pan was broken by me) (tam is "was_en").
##############################
if($form == "82"){
	if($sal2d[$ind-1][0] == "12"){
		if($sal2d[$ind-1][1] == "886"){
# I was eaten.
			if($sal2d[$ind-1][2] == "10"){
				if($flag_lwg_negation){



					$lwg="(root-verbchunk-tam-parser_chunkids  root_to_be_decide was_not_$tword[$ind] tam_to_be_decided ";
					$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
					$lwg=$lwg.$lwg_ids.")";
					return $lwg;



				}
				else{


					$lwg="(root-verbchunk-tam-parser_chunkids root_to_be_decided was_$tword[$ind] tam_to_be_decided ";
					$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
					$lwg=$lwg.$lwg_ids.")";
					return $lwg;


				}
			}	
# They were eaten.
			if($sal2d[$ind-1][2] == "13"){
				if($flag_lwg_negation){



					$lwg="(root-verbchunk-tam-parser_chunkids root_to_be_decided were_not_$tword[$ind] tam_to_be_decided ";
					$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
					$lwg=$lwg.$lwg_ids.")";
					return $lwg;


				}
				else{


					$lwg="(root-verbchunk-tam-parser_chunkids root_to_be_decided were_$tword[$ind] tam_to_be_decided ";
					$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
					$lwg=$lwg.$lwg_ids.")";
					return $lwg;


				}
			}
		}
	}
}
#	84	has/have_been_en
#######################
# Work has been done.
# Work has not been done.
# Problems have been solved.
# Problems have not been solved.
#######################
if($form == "84"){
	if($sal2d[$ind-1][0] == "12"){
		if($sal2d[$ind-1][1] == "710"){
# Work has been done.
			if($sal2d[$ind-1][2] == "3"){
				if($flag_lwg_negation){




					$lwg="(root-verbchunk-tam-parser_chunkids   - has_not_been_$tword[$ind] has_not_been_en ";
					$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
					$lwg=$lwg.$lwg_ids.")";
					return $lwg;


				}
				else{



					$lwg="(root-verbchunk-tam-parser_chunkids   - has_been_$tword[$ind] has_been_en ";
					$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
					$lwg=$lwg.$lwg_ids.")";
					return $lwg;


				}
			}
			if($sal2d[$ind-1][2] == "1"){
				if($flag_lwg_negation){



					$lwg="(root-verbchunk-tam-parser_chunkids   - have_not_been_$tword[$ind] have_not_been_en ";
					$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
					$lwg=$lwg.$lwg_ids.")";
					return $lwg;


				}
				else{


					$lwg="(root-verbchunk-tam-parser_chunkids   - have_been_$tword[$ind] have_been_en ";
					$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
					$lwg=$lwg.$lwg_ids.")";
					return $lwg;


				}
			}
		}
	}
}
#	86	had_been_en
#######################
# As had been expected, the party was a big success
#######################
if($form == "86"){
	if(($sal2d[$ind-1][0] == "12")&&($sal2d[$ind-1][1] == "710") &&($sal2d[$ind-1][2] == "7")){
		if($flag_lwg_negation){




			$lwg="(root-verbchunk-tam-parser_chunkids   - had_not_been_$tword[$ind] had_not_been_en ";
			$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
			$lwg=$lwg.$lwg_ids.")";
			return $lwg;


		}
		else{


			$lwg="(root-verbchunk-tam-parser_chunkids   - had_been_$tword[$ind] had_been_en ";
			$lwg_ids=&find_lwg_id(\@res2d,\@tword,$lwg,$ind,\@prev_ind);
			$lwg=$lwg.$lwg_ids.")";
			return $lwg;

		}
	}
}
#return $lwg;
}


sub find_lwg_id{

	my($refres2d,$reftword,$lwg,$ind,$refprev_ind)=@_;

	@res2d=@{$refres2d};
	@tword=@{$reftword};
	@prev_ind=@{$refprev_ind};

	if(($lwg =~ /root_to_be_decided\s+([^\ ]+)/) || ($lwg =~ /-\s+([^\ ]+)/)){
		$tam=$1;
	}
	@tam_elm=split(/_/,$tam);
	$lwg_id="";
	$prev_wd_id=0;
	for $j (0 .. $#tam_elm){	
		$found=0;
		for $i (0 .. $#tword){

			if (($tword[$i] =~ /^$tam_elm[$j]$/)&&($found == 0)&& ($sal2d[$i][3] > $prev_wd_id)){
				$flag_exist=0;
				if($#prev_ind >= 0){
					for $k (0 .. $#prev_ind){
						if($scon2d_tran3[$sal2d[$i][3]][10] == $prev_ind[$k]){$flag_exist=1;}
					}
				}
				if(!$flag_exist){
					$id=$scon2d_tran3[$sal2d[$i][3]][10];
#$id=$i+1;
					$lwg_id=$lwg_id." P".$id;
					$found=1;
					$prev_wd_id=$id;
					$flag_exist=0;
					$prev_ind[$#prev_ind+1]=$id;
				}
			}
		}
		if(!$found){
			for $i ($prev_wd_id-1 .. $#res2d){
				if (($res2d[$i][35] =~ /^$tam_elm[$j]$/)&&($found == 0)&& ($res2d[$i][0] > $prev_wd_id)){
					$flag_exist=0;
					if($#prev_ind >= 0){
						for $k (0 .. $#prev_ind){
							if($res2d[$i][0] == $prev_ind[$k]){$flag_exist=1;}
						}
					}
					if(!$flag_exist){
						$id=$res2d[$i][0];
#$id=$i+1;
						$lwg_id=$lwg_id." P".$id;
						$found=1;
						$prev_wd_id=$id;
						$flag_exist=0;
						$prev_ind[$#prev_ind+1]=$id;
					}
				}
			}
		}

	}
	return $lwg_id;	
}



