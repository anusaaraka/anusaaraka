#!/usr/bin/perl -w


##############################################################################
#  Copyright (C) 2002-2005 Amba Kulkarni (amba at iiit dot net)
#
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License
#  as published by the Free Software Foundation; either
#  version 2 of the License, or (at your option) any later
#  version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

##############################################################################



open(TMP,">$ARGV[0]") || die "Can't open $ARGV[0] for reading";
open(TMP1,">$ARGV[1]") || die "Can't open $ARGV[1] for reading";
if($#ARGV >= 2) {
   if($ARGV[2] eq "D") { $DEBUG = 1;} else { $DEBUG = 0;}
}

&init_count();

#$wrd = "[a-zA-Z0-9\-¡-þ_]+";
#¡-þ  is latin code 161 - 254 of iscii characters. Now these characters are not used so these are removed from word field.
$wrd = "[a-zA-Z0-9\-_]+";  
$start_tag = "<$wrd>";
$end_tag = "<\\\/$wrd>";
$number = "[+-]?[0-9]+([,.][0-9]+)?";
$section_number = "[+-]?[0-9]+([,.][0-9]+)+";
$hr_min = "[0-9]+[:][0-9]+";
$hr_min_sec = "[0-9]+[:][0-9]+[:][0-9]+";
#$punct = "[^a-zA-Z0-9\-¡-þ_]";
#¡-þ  is latin code 161 - 254 of iscii characters. Now these characters are not used so these are removed from punct field.
$punct = "[^a-zA-Z0-9\-_]";
$abbr = "[A-Za-z][A-Za-z]?\\.(?:[A-Za-z]\\.)+";

$para_no=1; $word_no = 1; $sent_no = 1;
while($in = <STDIN>){
    $in = &rm_extra_white_sp($in);
    @words = split(/ /,$in);

    foreach $word (@words){
        &init_tag(); 

	#$word =~ s/'s/QQUUOOTTEEs/;
	#$word =~ s/o'clock/oQQUUOOTTEEclock/;
	$word_no++;

        if($word =~/^(($start_tag)*($punct)*)($wrd|$number|$section_number|$hr_min|$hr_min_sec|$abbr)(($punct)*($end_tag)*)$/i) {
	   $pre_tag = $1; $content = $4; $post_tag = $7;
           if($content eq "-") { $content = "-"}
           if($content eq "") { $content = "NULLNULLNULL"}
        }
        else {
            print STDERR "Check the pattern for the word \"$word\"@";
            print STDERR "p$para_no:s$sent_no:w$word_no \n";
            #if($content eq "") { $content = $word;}
            $content = $word;
            $pre_tag = "";
            $post_tag = "";
        }

	if($word =~ /<p>/) {
		$para_no++; $word_no = 1; $sent_no = 1;
	}
	elsif($word =~ /<s>/) {
		$sent_no++; $word_no = 1;
	}

	$content =~ s/ABBR-SingleQuote/'/;
	print TMP $para_no,".",$sent_no,".",$word_no,"\t",$pre_tag,$content,$post_tag,"\n";
	print TMP1 $para_no,".",$sent_no,".",$word_no,"\t",$pre_tag,"\t",$content,"\t",$post_tag,"\n";
  }
}
close(TMP);
close(TMP1);

sub rm_extra_white_sp{
local($str) = @_;
       $str =~ s/\n//;
       $str =~ s/\t/ /g;
       $str =~ s/[ ]+/ /g;
       $str =~ s/^[ \t]+//g;
$str;
}
1;

sub init_tag {
	$pre_tag = ""; $content = ""; $post_tag = "";
}
1;

sub init_count {
	$para_no = 0; $sent_no = 0; $word_no = 0;
}
1;
