#!/usr/bin/perl


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



$old_s_no = 0;
$s_no = 0;

## This program generates sentences per line from the formatted output
## Puts the tags and punctuation marks in other file.

open(SNT,">$ARGV[0]") || die "Can't open $ARGV[0] for writing";
open(SNT_PUNCT,">$ARGV[0]_punct_sep") || die "Can't open $ARGV[0]_punct_sep for writing";

$old_s_no = 1;
$old_p_no = 1;

while($in = <STDIN>){
  chomp($in);

## Ignore tags 
 if($in !~ /^</){

## If the sentence number of the previous word does not match with the sentence
## number of the current word, mark the end of previous line by '\n' character.
##else produce word seperated by space.

  ($no,$lft,$word,$rt) = split(/\t/,$in);
  ($p_no,$s_no,$w_no) = split(/\./,$no);
  if($s_no != $old_s_no) { 
	print SNT "\n"; 
	print SNT_PUNCT "\n"; 
	$old_s_no = $s_no;
  }
  if($p_no != $old_p_no) { 
	print SNT "\n"; print SNT_PUNCT "\n"; $old_p_no = $p_no;
  }
  print SNT $word," ";
  $lft =~ s/<[^>]+>//g;
  $rt =~ s/<[^>]+>//g;
#The following have been commented, since otherwise, the pos tagger and chunker outputs are wrong.
#  $lft =~ s/\)//g;
#  $rt =~ s/\)//g;
#  $lft =~ s/\(//g;
#  $rt =~ s/\(//g;
  if($lft) { print SNT_PUNCT $lft," "; }
  $word =~ s/(.*):TYPO/TYPO/;
  print SNT_PUNCT $word," ";
  if($rt) { print SNT_PUNCT $rt," ";}
 }
}
close(SNT);
close(SNT_PUNCT);
