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

# Processing Symbols::
# Below three files are for handling different types of Symbols.

# Replacing Non-ASCII characters within ASCII range with ASCII characters.  Ex: “ is replaced with "
$PATH1/replacing-non_ascii_chars-to-ascii_chars.out <  $2/$1  > $1.tmp_tmp 

# Replacing Symbols with their linguistic name. Mapped name is sent to the Parser. Ex: = is replaced as SYMBOL-EQUAL-TO
$PATH1/mapping-symbols.out  $HOME_anu_tmp/tmp/$1_tmp/Symbols.txt_tmp < $1.tmp_tmp > $1.tmp_tmp1

# Remaining Non-ASCII characters are handled here
# Program to replace more than 1 BYTE CHARACTER WITH nonascii<no of bytes><value>  Ex:Δ is replaced as nonascii2206148
$HOME_anu_test/Anu_src/identify-nonascii-chars.out $1.tmp_tmp1 $1.tmp

# enclitics.lex expands the standard abbreviations with single apostophe  such as I'm  ---> I am
$PATH1/enclitics.out < $1.tmp > $1.tmp1

# standard_abbrevations.lex handles standard abbreviations such as 'Inc.', 'viz.', 'e.g.', 'B.S.' ... 
$PATH1/standard_abbrevations.out < $1.tmp1 > $1.tmp2

# abbrevations.lex handles abbreviations such as  'dec.', 'a.d.', 'rs.' ...  
# Better solution for this is necessary
$PATH1/abbrevations.out < $1.tmp2 > $1.tmp3

# titles.lex handles titles such as 'Dr.', 'Mr.', 'Mrs.'  ... 
$PATH1/titles.out < $1.tmp3 > $1.tmp4

# initialisms.lex handles initials such as 'U.S.A.', 'M.D.'  ...
$PATH1/initialisms.out < $1.tmp4 > $1.tmp5

# insert_period.lex inserts a punctuation at the end of the sentence
$PATH1/insert_period.out < $1.tmp5 > $1.tmp6

# This program handles special characters : Ex : change '&' to 'and' , Replace '...' by one word 'DOTDOTDOT'
$PATH1/chk_input_format.pl < $1.tmp6  > $1.tmp7

# Simplifying English sentence. Ex: 'a number of' is replaced as 'many'
$PATH1/simplify_english.pl < $1.tmp7 > $1.tmp8

#The program sentence_boundary.pl takes as an input a text file, and generates as
#output another text file in which each line contains only one sentence. Blank
#lines in the input file are considered to make the end of paragraphs, and are
#still present in the output file. It requires a honorifics file as an argument.#A sample honorifics file is provided. This file MUST contain honorifics, not
#abbreviations. The program detects abbreviations using regular expressions.

$PATH1/sentence-boundary.pl -d $PATH1/HONORIFICS -i $1.tmp8 -o ../$1.std

cd ../
fi
