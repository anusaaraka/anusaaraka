#bin/perl

open(LINK,"< $ARGV[0]") || die "Can't open $ARGV[0]\n";
open(TMP_IN,"> tmp_input") || die "Can't open tmp_input\n";
close(TMP_IN);

print "<map version=\"0.7.1\">\n";
print "<node TEXT=\"run_sentences.sh\">\n";
print "<node POSITION=\"right\" TEXT=\"LINK PARSER\">\n";
$i=0;

$TMP_INPUT=0;
$CLP_FLAG=0;
while(<LINK>){
  if($_ =~ /\s*\(clear\)\s*/){$CLP_FLAG=0;}
  if(($_ =~ /([^\/"]*\.[b]?clp)"/) && ($_ !~ /^;/) && ($_ !~ /global_path/)) {


    $CLP_FLAG=1;
    if($OUT eq 0){	
      print "<\/node>\n";
      print "<node TEXT=\"OUTPUT\" FOLDED=\"true\">\n";
      print "<\/node>\n";
    }
    if($i ne 0){
      if($OUT eq 1){print "<\/node>\n";	print "<\/node>\n";}
      else{print "<\/node>\n";}
    }
    $i++;
    print "<node TEXT=\"$1\" FOLDED=\"true\">\n";
    print "<node TEXT=\"INPUT\" FOLDED=\"true\">\n";
    if($TMP_INPUT){
      open(TMP_IN,"< tmp_input") || die "Can't open tmp_input\n";
      while(<TMP_IN>){ print $_;}
			$TMP_INPUT=0;
    }
    $IN=0;
    $In_comp=0;
    $OUT=0;
  }
  elsif(($_ =~ /load-facts\s+"([^"]*)\.dat"/)&&($_ !~ /^\s*;/)){


    if(!$CLP_FLAG){

      $TMP_INPUT=1;
      $IN=1;
      open(TMP_IN,">> tmp_input") || die "Can't open tmp_input\n";
      print TMP_IN "<node TEXT=\"$1\.dat\" FOLDED=\"true\">\n";
      open(IN,"< $1\.dat")|| die"Can't open $1\.dat\n";
      print TMP_IN "<node TEXT=\"";
      while(<IN>){
        chomp($_);
        $_ =~ s/"//g;
        print TMP_IN "&#xa;$_";
      }
      print TMP_IN "\">\n";
      print TMP_IN "<\/node>\n";
      print TMP_IN "<\/node>\n";
      close(TMP_IN);
    }
    else{

      $IN=1;
      print "<node TEXT=\"$1\.dat\" FOLDED=\"true\">\n";
      open(IN,"< $1\.dat")|| die"Can't open $1\.dat\n";
      print "<node TEXT=\"";
      while(<IN>){
        chomp($_);
        $_ =~ s/"//g;
        print "&#xa;$_";
      }
      print "\">\n";
      print "<\/node>\n";
      print "<\/node>\n";

    }
  }
    elsif((($_ =~ /open\s+"([^"]*)\.dat"/)||($_ =~ /save-facts\s+"([^"]*)\.dat"/))&& ($_ !~ /^;/)){
      if($OUT eq 0){	
        print "<\/node>\n";$In_comp=1;
        print "<node TEXT=\"OUTPUT\" FOLDED=\"true\">\n";
      }
      $OUT=1;
      print "<node TEXT=\"$1\.dat\" FOLDED=\"true\">\n";
      open(OUT,"< $1\.dat")|| die"Can't open $1\.dat\n";
      print "<node TEXT=\"";
      while(<OUT>){
        chomp($_);
        $_ =~ s/"//g;
        print "&#xa;$_";
      }
      print "\">\n";
      print "<\/node>\n";
      print "<\/node>\n";
    }
  }
  if($In_comp eq 0){print "<\/node>\n";}
  if($OUT eq 0){	
    print "<node TEXT=\"OUTPUT\" FOLDED=\"true\">\n";
  }
  print "<\/node>\n";
  print "<\/node>\n";
  print "<\/node>\n";
  print "<\/node>\n";
  print "<\/map>";
  close(LINK);
