#!/bin/sh


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
PATH1=$HOME_anu_test/Anu/save_format
PATH2=$2/tmp

## generate a table with following format
## p_no.sent_no.word_no\tleft_tag\tword\tright_tag

if [ -f "$PATH2/tmp_save_format"  ] ; then
  echo "File tmp_save_format exists. Remove or rename it, and give the command again ."
else
  if [ -e "$PATH2/tmp_save_format" ] ; then
    cd $PATH2/tmp_save_format
  else
    mkdir $PATH2/tmp_save_format
    cd $PATH2/tmp_save_format
  fi

#Generates a table in $1.fmt_split in the following format
# para_sent_word_no \t pre_tag \t content \t post_tag
$PATH1/gen_table.pl $1.fmt $1.fmt_split_tmp < ../$1.pre-processed

##Added by Sukhada (29-06-11)
# To replace underscore (_) with hyphens (-)  (for WordNet purpose ) Ex: Child_abuse 
python $PATH1/replace_underscore_with_hyphen.py   $1.fmt_split_tmp  $PATH2/$1_tmp/underscore_hyphen_replace_info.txt  $1.fmt_split_tmp1

##Added by Roja(18-07-12)
##Replacing ABBR has these abrevations dont create any problem in CLIPS.
##Without replacing this ABBR parserid_wordid_mapping fails Ex: 'etc.' in sd_word_tmp.dat and 'etcabbr-dot' in word.dat
sed 's/ABBR-ThatIs/i.e./g' $1.fmt_split_tmp1 | sed 's/ABBR-Example/e.g./g' | sed 's/ABBR-USA/U.S.A./g' | sed 's/ABBR-US/U.S./g' | sed 's/ABBR-UK/U.K./g' | sed 's/ABBR-AD/A.D./g' | sed 's/ABBR-aka/a.k.a/g'| sed 's/ABBR-Dot/./g' > $1.fmt_split


#########################  Currently Disabled #########################################
#$PATH1/report_error.pl < $1.fmt_split
#######################################################################################

## This program generates sentences per line from the formatted output
## Puts the tags and punctuation marks in other file.
$PATH1/get_sent_pure_words.pl ../$1.snt < $1.fmt_split

## This program splits the format information into sentences, and also adds a
## sentnce at the top of each format info.
$PATH1/change2parser_format.pl < $1.fmt_split > ../$1.sent_info

cd ..
fi
