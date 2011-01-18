open(PADATMP,"$ARGV[0]/ol_pada_tmp1.dat") or die "Can't open file ol_pada_tmp.dat\n";


  $line=<PADATMP>;
	if($line =~ /tran1/){
  while($line !~ /^\n/){
    $line =~ /tran1\s+PP\s+P\d+\s+([^\)]+)\)/;
    $tran1=$tran1." ".$1;
    $line=<PADATMP>;
  }
  $line=<PADATMP>;
  while($line !~ /^\n/){
    $line =~ /tran2\s+PP\s+P\d+\s+([^\)]+)\)/;
    $tran2=$tran2." ".$1;
    $line=<PADATMP>;
  }
  $line=<PADATMP>;
  while($line !~ /^\n/){
    $line =~ /tran3\s+PP\s+P\d+\s+([^\)]+)\)/;
    $tran3=$tran3." ".$1;
    $line=<PADATMP>;
  }
  $line=<PADATMP>;
  if($line =~ /VP/){
  while($line !~ /^\n/){
    $line =~ /VP\s+P\d+\s+([^\)]+)\)/;
    $vp=$vp." ".$1;
    $line=<PADATMP>;
  }}
}
close(PADATMP);
open(PADATMP,">>$ARGV[0]/ol_pada_tmp.dat") or die "Can't open file ol_pada_tmp.dat\n";


$tran1 =~ s/^\s+//;
$tran1 =~ s/\s+$//;
$tran1 =~ s/P//g;
$tran2 =~ s/^\s+//;
$tran2 =~ s/\s+$//;
$tran2 =~ s/P//g;
$tran3 =~ s/^\s+//;
$tran3 =~ s/\s+$//;
$tran3 =~ s/P//g;
$vp =~ s/^\s+//;
$vp =~ s/\s+$//;
$vp =~ s/P//g;

@atran1=split(/\s+/,$tran1);
@atran2=split(/\s+/,$tran2);
@atran3=split(/\s+/,$tran3);
@avp=split(/\s+/,$vp);

@total_tran1= sort { $a <=> $b } (@atran1,@avp);
@total_tran2= sort { $a <=> $b } (@atran2,@avp);
@total_tran3= sort { $a <=> $b } (@atran3,@avp);

  for $j (0 .. $#total_tran1){
    if(($total_tran1[$j] != $prev+1) && ($j >0)){
      for($k=1;$k < $total_tran1[$j] - $prev;$k++){
        $m_id=$prev+$k;
        print PADATMP "(missing-level-id tran1 P$m_id)\n";
      }
      $prev=$total_tran1[$j];
    }
    $prev=$total_tran1[$j];
  }

  for $j (0 .. $#total_tran2){
    if(($total_tran2[$j] != $prev+1) && ($j >0)){
      for($k=1;$k < $total_tran2[$j] - $prev;$k++){
        $m_id=$prev+$k;
        print PADATMP "(missing-level-id tran2 P$m_id)\n";
      }
      $prev=$total_tran2[$j];
    }
    $prev=$total_tran2[$j];
  }

  for $j (0 .. $#total_tran3){
    if(($total_tran3[$j] != $prev+1) && ($j >0)){
      for($k=1;$k < $total_tran3[$j] - $prev;$k++){
        $m_id=$prev+$k;
        print PADATMP "(missing-level-id tran3 P$m_id)\n";
      }
      $prev=$total_tran3[$j];
    }
    $prev=$total_tran3[$j];
  }

close(PADATMP);



