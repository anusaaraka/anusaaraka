#!/usr/bin/perl 
#===============================================================================
#
#         FILE:  hnd_translation.pl
#
#        USAGE:  ./hnd_translation.pl <file>
#
#  DESCRIPTION:  copies the final hindi translation output to the interface.
#
#      OPTIONS:  ---
# REQUIREMENTS:  ---
#         BUGS:  ---
#        NOTES:  ---
#       AUTHOR:   (), <>
#      COMPANY:  
#      VERSION:  1.0
#      CREATED:  Friday 26 September 2008 12:42:59  IST IST
#     REVISION:  ---
#===============================================================================

use warnings;
	
$path_clips = $ARGV[1];
undef $/;
#$/="\n\n";

open(TMP,"< $path_clips/tmp/tmp_save_format/$ARGV[0]\.fmt_split") || die "Can't open file $ARGV[0]\.fmt_split\n";
open(TRANS,"> $path_clips\/tmp/$ARGV[0]_tmp/$ARGV[0]_trnsltn_tmp.html") || die "Can't open $ARGV[0]_trnsltn_tmp.html";
print TRANS "<HTML><BODY>\n";
print TRANS "<HTML lang=\"hi\"><BODY>\n<meta http-equiv=\"Content-Language\" content=\"hi\">\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n";
close(TRANS);



$in=<TMP>;
@lines=split(/<\/s>|<\/TITLE>/,$in);
foreach $line (@lines){
	&final_translation($line);
}


sub final_translation{
  $myline=$_[0];
  local $/="\n";
  if($myline =~ /(\d+)\.(\d+)\.(\d+)/){
    $ParaId=$1;$SenId=$2;

   ##Added below two lines to avoid 1.1 translation in server (Roja 09-04-12)
   if(defined $ARGV[2] && length $ARGV[2] > 0) {
   if(($ARGV[2] eq "REMOVE_TITLE") && ($ParaId == 1 && $SenId == 1))  { return; } }

    local $facts_filename = $path_clips."/tmp/$ARGV[0]_tmp/".$ParaId.".".$SenId."/hindi_sentence_tmp.dat";

    if (-e  $facts_filename) {
      if (-z $facts_filename){
        open(TRANS,">> $path_clips\/tmp/$ARGV[0]_tmp/$ARGV[0]_trnsltn_tmp.html") || die "Can't open $ARGV[0]_trnsltn_tmp.html";
        print TRANS "$ParaId.$SenId\tCould not translate the sentence. \n<BR>\n";
        close(TRANS);
        return;
      }
      else{
        open(FT,"< $facts_filename") || die "Can't open $facts_filename\n";
        while(<FT>){
          chomp($sen_wx=$_);
          $sen_wx =~ s/^\s*//g;
          $sen_wx =~ s/\s*$//g;
         # $sen_wx =~ s/-//g; 
          $sen_wx =~ s/-/-@/g; #Modified this pattern by Roja (08-09-11)Ex: Finger-pointing has already begun.
                                                                  #     Ex: The Mughals ruled India in 1526-1761.
          $sen_wx =~ s/#0//g;
          $sen_wx =~ s/#//g;
          $sen_wx =~ s/\\//g;
          $sen_wx =~ s/\_/ /g;
#Added below two patterns by Roja (12-04-12).
#Ex:  He said such results should be "measurable in dollars and cents" in reducing the U.S. trade deficit with Japan.
#To handle pattrens like "U.S." , "A.D." etc 
#Adding '@' before 'S'. Else it converts to utf8.
	  $sen_wx =~ s/[.]([^ ])/.@ $1/; 
          $sen_wx =~ s/@[ ]/@/;         
          $sen_utf8=&wx_utf8($sen_wx);
          open(TRANS,">> $path_clips\/tmp/$ARGV[0]_tmp/$ARGV[0]_trnsltn_tmp.html") || die "Can't open $ARGV[0]_trnsltn_tmp.html";
          #
          print TRANS "$ParaId.$SenId\t$sen_utf8\n<BR>\n";

          close(TRANS);
          return;
        }
      }
    }
    else {
      open(TRANS,">> $path_clips\/tmp/$ARGV[0]_tmp/$ARGV[0]_trnsltn_tmp.html") || die "Can't open $ARGV[0]_trnsltn.html";
      print TRANS "$ParaId.$SenId\tCould not translate the sentence. \n<BR>\n";
      close(TRANS);

    }
  }
}

sub wx_utf8 {

    my $wx=$_[0];
    open(WX,"> $path_clips\/tmp/$ARGV[0]_tmp/tmp_wx") || die "Can't open file tmp_wx\n";
    print WX "$wx";
    close(WX);
    system("wx_utf8 $path_clips\/tmp/$ARGV[0]_tmp/tmp_wx > $path_clips\/tmp/$ARGV[0]_tmp/tmp_utf8");
    open(UTF,"< $path_clips\/tmp/$ARGV[0]_tmp/tmp_utf8") || die "Can't open file tmp_isc\n";
    chomp($utf=<UTF>);return $utf;
}


open(TRANS,">> $path_clips\/tmp/$ARGV[0]_tmp/$ARGV[0]_trnsltn_tmp.html") || die "Can't open $ARGV[0]_trnsltn.html";
print TRANS "</BODY></HTML>\n";
close(TRANS);
