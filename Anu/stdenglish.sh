## First join the words that are split with '-' followed by a new line.
## Split words that have 'spoken' spelling rather than 'written'.
PATH1=$HOME_anu_test/Anu/stdenglish
PATH2=$2/tmp/

if [ -f "$PATH2/tmp_stdenglish"  ] ; then
  echo "File tmp_stdenglish exists. Remove or rename it, and give the command again ."
else
  if [ -e "$PATH2/tmp_stdenglish" ] ; then
    cd $PATH2/tmp_stdenglish
  else
    mkdir $PATH2/tmp_stdenglish
    cd $PATH2/tmp_stdenglish
  fi

#####################################################################################################################
# This program checks the input format for unprintable characters, and
# special characters such as '[^#&~`*]' which have special meanings either 
# in bash or in regular expressions.
# It removes these special characters.

#Replacing the non-breakable space (NBSP) which has octal value (\302 240\) with normal ascii space character.
#Replacing the zero width non-breakable space (ZWNBSP) which has octal value (\357 273\) with normal ascii space character.
#Further such non-ascii characters can be included in this sed list.
#1. NBSP    \302 240\
#2. ZWNBSP  \357 273\
#3. RSQM    \342 200\   
#4. LDQM    \342 200\
#5. RDQM    \342 200\
#6. LSQM    \342 200\

#7. Replacing EmDash (2014) with - 

sed -e 's/ / /g' <  $2/$1 | sed -e "s/’/'/g" | sed -e 's/“/"/g' | sed -e 's/”/"/g' | sed -e "s/‘/'/g"| sed -e 's/﻿/ /g' | sed -e "s/—/-/g" > $1.tmp 


# enclitics.lex expands the standard abbreviations with single apostophe  such as I'm  ---> I am
$PATH1/enclitics.out < $1.tmp > $1.tmp1

# abbrevations.lex handles standard abbreviations such as 'i.e.', 'e.g.','U.S.A',  etc.
# Better solution for this is necessary
$PATH1/abbrevations.out < $1.tmp1 > $1.tmp2

# honorifics.lex handles standard honorifics such as "Dr,Mr,Mrs .... "
$PATH1/honorifics.out < $1.tmp2 > $1.tmp3

#insert_period.out inserts a punctuation at the end of the sentence
$PATH1/insert_period.out < $1.tmp3 > $1.tmp4

# This program handles special characters : Ex : change '&' to 'and' , Replace '...' by one word 'DOTDOTDOT'
$PATH1/chk_input_format.pl < $1.tmp4  > $1.tmp5

#The program sentence_boundary.pl takes as an input a text file, and generates as
#output another text file in which each line contains only one sentence. Blank
#lines in the input file are considered to make the end of paragraphs, and are
#still present in the output file. It requires a honorifics file as an argument.#A sample honorifics file is provided. This file MUST contain honorifics, not
#abbreviations. The program detects abbreviations using regular expressions.

$PATH1/sentence-boundary.pl -d $PATH1/HONORIFICS -i $1.tmp5 -o ../$1.std

cd ../
fi
