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



## Eat up all white space between a tag and a word or a word and a tag.
## Add Sentence marker tag <s>,</s> to mark the beginning and end of a sentence.

PATH1=$HOME_anu_test/Anu/std_format
PATH2=$2/tmp/

if [ -f "$PATH2/tmp_std_format"  ] ; then
  echo "File tmp_std_format exists. Remove or rename it, and give the command again ."
else
  if [ -e "$PATH2/tmp_std_format" ] ; then
    cd $PATH2/tmp_std_format
  else
    mkdir $PATH2/tmp_std_format
    cd $PATH2/tmp_std_format
  fi

#This program absorbs spaces between tags and the words.
#e.g. <TITLE> test </TITLE> will be changed to <TITLE>test</TITLE>
$PATH1/change2mystdformat.out < ../$1.std > $1.tmp2

#Below programme is out dated so removing them.(Suggested by Chaitanya Sir 09-07-12)
#This program changes spaces in between the HTML tags to underscores.
# e.g. '<a href' is changed to '<a_href'
#$PATH1/html_tag_sp.out < $1.tmp2 > $1.tmp3

#This program adds sentence marker tags <s> </s>
#NOTE: Already sentence_boundary.pl is used. The following program is in that sense redundand.
$PATH1/add_snt_mrkr.out < $1.tmp2 > $PATH2/$1.pre-processed

# Produces an error if the sentences have more than 250 words.
$PATH1/check_long_sentences.pl < $PATH2/$1.pre-processed

cd ../
fi
