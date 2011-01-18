open(PREP,"> $ARGV[0]/ol_prep.dat") or die "Can't open file ol_prep.dat\n";
while(<STDIN>){

  $line="";

  if($_ =~ /RESOLVED SWORK RECORDS/) { 

    $line=<STDIN>;
    while($line !~ /^\s+1/){
      $line=<STDIN>;
    }

    $i=0;	
    @res=();
    while($line !~ /^\n/){
      $line =~ s/^\s+//;
      $line =~ s/\s+$//;
      @res=split(/\s+/,$line);
      if(($res[2] == 11)|| ($res[2] == 13)){
        print PREP "(word-type-id $res[35] $res[2] P$res[0])\n";
      }
      $line = <STDIN>;
    }
  }
}
close(PREP);
