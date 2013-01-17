#Processing manual sentences file and its shallow parser o/p.
#Separated below coding from Anusaaraka_stanford_minion.sh  
#TODO:: This file need to be simplified.

 MYPATH=$HOME_anu_tmp

 echo "Pre-proccessing manual file ..."
 #Running below command temporarily . As of now o/p from champollion is in canonical form.
 #If input is from other source then comment the below line and modify the shell accordingly.
 $HOME_anu_test/Anu_data/canonical_form_dictionary/non_canonical_form.out   < $2  >  $MYPATH/tmp/$1_tmp/$2_in_non_canonical_form
 $HOME_anu_test/Anu_data/canonical_form_dictionary/canonical_form.out   < $MYPATH/tmp/$1_tmp/$2_in_non_canonical_form  >  $MYPATH/tmp/$1_tmp/$2_in_canonical_form_tmp
 $HOME_anu_test/Anu_data/canonical_form_dictionary/replacing_canonical.out  < $MYPATH/tmp/$1_tmp/$2_in_canonical_form_tmp  >  $MYPATH/tmp/$1_tmp/$2_in_canonical_form
 $HOME_anu_test/miscellaneous/SMT/MINION/alignment/mapping-symbols_manual.out  $HOME_anu_tmp/tmp/$1_tmp/Symbols_man.txt_tmp < $MYPATH/tmp/$1_tmp/$2_in_canonical_form > $MYPATH/tmp/$1_tmp/one_sen_per_line_manual_hindi_sen_tmp.txt
 $HOME_anu_test/Anu_src/identify-nonascii-chars.out $MYPATH/tmp/$1_tmp/one_sen_per_line_manual_hindi_sen_tmp.txt $MYPATH/tmp/$1_tmp/one_sen_per_line_manual_hindi_sen_tmp2.txt
 wx_utf8 < $MYPATH/tmp/$1_tmp/one_sen_per_line_manual_hindi_sen_tmp2.txt > $MYPATH/tmp/$1_tmp/one_sen_per_line_manual_hindi_sen_tmp3.txt
 $HOME_anu_test/miscellaneous/SMT/MINION/alignment/adding@-for-eng-words.out < $MYPATH/tmp/$1_tmp/one_sen_per_line_manual_hindi_sen_tmp3.txt > $MYPATH/tmp/$1_tmp/one_sen_per_line_manual_hindi_sen_tmp4.txt
  
 echo "Running Shallow Parser ..."
 cd $HOME_anu_test/miscellaneous/SHALLOW_PARSER
  sh run_shallow_parser.sh $MYPATH/tmp/$1_tmp/one_sen_per_line_manual_hindi_sen_tmp4.txt

 echo "Generating canonical form for Shallow Parser Output ..."
 ./adding@-for-eng-words.out < $MYPATH/tmp/$1_tmp/one_sen_per_line_manual_hindi_sen_tmp4.txt.out > $MYPATH/tmp/$1_tmp/one_sen_per_line_manual_hindi_sen_tmp4.txt.out1
 cut -f1 $MYPATH/tmp/$1_tmp/one_sen_per_line_manual_hindi_sen_tmp4.txt.out1 > $MYPATH/tmp/$1_tmp/tmp1
 cut -f2 $MYPATH/tmp/$1_tmp/one_sen_per_line_manual_hindi_sen_tmp4.txt.out1 > $MYPATH/tmp/$1_tmp/tmp2
 cut -f3 $MYPATH/tmp/$1_tmp/one_sen_per_line_manual_hindi_sen_tmp4.txt.out1 > $MYPATH/tmp/$1_tmp/tmp3
 cut -f4 $MYPATH/tmp/$1_tmp/one_sen_per_line_manual_hindi_sen_tmp4.txt.out1 > $MYPATH/tmp/$1_tmp/tmp4
 utf8_wx $MYPATH/tmp/$1_tmp/tmp1 > $MYPATH/tmp/$1_tmp/tmp1_wx
 utf8_wx $MYPATH/tmp/$1_tmp/tmp2 > $MYPATH/tmp/$1_tmp/tmp2_wx
 utf8_wx $MYPATH/tmp/$1_tmp/tmp3 > $MYPATH/tmp/$1_tmp/tmp3_wx
 utf8_wx $MYPATH/tmp/$1_tmp/tmp4 > $MYPATH/tmp/$1_tmp/tmp4_wx

 $HOME_anu_test/Anu_data/canonical_form_dictionary/canonical_form.out   < $MYPATH/tmp/$1_tmp/tmp1_wx  >  $MYPATH/tmp/$1_tmp/tmp1_canonical_tmp
 $HOME_anu_test/Anu_data/canonical_form_dictionary/replacing_canonical.out  < $MYPATH/tmp/$1_tmp/tmp1_canonical_tmp  >  $MYPATH/tmp/$1_tmp/tmp1_canonical

 $HOME_anu_test/Anu_data/canonical_form_dictionary/canonical_form.out   < $MYPATH/tmp/$1_tmp/tmp2_wx  >  $MYPATH/tmp/$1_tmp/tmp2_canonical_tmp
 $HOME_anu_test/Anu_data/canonical_form_dictionary/replacing_canonical.out  < $MYPATH/tmp/$1_tmp/tmp2_canonical_tmp  >  $MYPATH/tmp/$1_tmp/tmp2_canonical

 $HOME_anu_test/Anu_data/canonical_form_dictionary/canonical_form.out   < $MYPATH/tmp/$1_tmp/tmp3_wx  >  $MYPATH/tmp/$1_tmp/tmp3_canonical_tmp
 $HOME_anu_test/Anu_data/canonical_form_dictionary/replacing_canonical.out  < $MYPATH/tmp/$1_tmp/tmp3_canonical_tmp  >  $MYPATH/tmp/$1_tmp/tmp3_canonical

 $HOME_anu_test/Anu_data/canonical_form_dictionary/canonical_form.out   < $MYPATH/tmp/$1_tmp/tmp4_wx  >  $MYPATH/tmp/$1_tmp/tmp4_canonical_tmp
 $HOME_anu_test/Anu_data/canonical_form_dictionary/replacing_canonical.out  < $MYPATH/tmp/$1_tmp/tmp4_canonical_tmp  >  $MYPATH/tmp/$1_tmp/tmp4_canonical

 paste $MYPATH/tmp/$1_tmp/tmp1_canonical $MYPATH/tmp/$1_tmp/tmp2_canonical $MYPATH/tmp/$1_tmp/tmp3_canonical $MYPATH/tmp/$1_tmp/tmp4_canonical > $MYPATH/tmp/$1_tmp/one_sen_per_line_manual_hindi_sen_tmp4.txt.out_canonical
 sed 's/\t;~~~~~~~~~~//g' $MYPATH/tmp/$1_tmp/one_sen_per_line_manual_hindi_sen_tmp4.txt.out_canonical | sed 's/C@LOSEPAREN/CLOSEPAREN/g' | sed 's/@//g'  > $MYPATH/tmp/$1_tmp/one_sen_per_line_manual_hindi_sen_tmp5.txt
 cd $MYPATH/tmp/$1_tmp/
 rm tmp1 tmp2 tmp3 tmp4 tmp1_wx tmp2_wx tmp3_wx tmp4_wx 

  utf8_wx $MYPATH/tmp/$1_tmp/one_sen_per_line_manual_hindi_sen_tmp4.txt > $MYPATH/tmp/$1_tmp/one_sen_per_line_manual_hindi_sen_tmp4_wx.txt

 echo "Tokenizing manual sentence"
  sh $HOME_anu_test/miscellaneous/HANDY_SCRIPTS/run_tokenizer_fr.sh $MYPATH/tmp/$1_tmp/one_sen_per_line_manual_hindi_sen_tmp4_wx.txt > $MYPATH/tmp/$1_tmp/one_sen_per_line_manual_hindi_sen_tokenized.txt  2>/dev/null
 cd $HOME_anu_test/miscellaneous/SMT/MINION/alignment
  python add-suf-into-chunks.py $MYPATH/tmp/$1_tmp/one_sen_per_line_manual_hindi_sen_tokenized.txt $MYPATH/tmp/$1_tmp/one_sen_per_line_manual_hindi_sen_tmp5.txt > $MYPATH/tmp/$1_tmp/shallow_parser_output_tmp.txt
  
  sort -u $MYPATH/tmp/$1_tmp/Symbols_man.txt_tmp > $MYPATH/tmp/$1_tmp/Symbols_man.txt
  echo "dummy_sed	" >>   $MYPATH/tmp/$1_tmp/Symbols_man.txt
  sed 's/^/sed \"s\//g'  $MYPATH/tmp/$1_tmp/Symbols_man.txt  |  sed 's/\t/\//g' | sed 's/$/\/g\" /g' |  sed -n '1h;2,$H;${g;s/\n/ /g;p}' | sed 's/g\"/g\" $1 /' | sed 's/ sed/| sed/g'   > $MYPATH/tmp/$1_tmp/Symbols_man.sh

 cd $HOME_anu_test/bin/
  apertium-destxt $MYPATH/tmp/$1_tmp/one_sen_per_line_manual_hindi_sen_tmp2.txt  | lt-proc -ac hi.morf.bin | apertium-retxt >  $MYPATH/tmp/$1_tmp/one_sen_per_line_manual_hindi_sen_tmp.txt.morph

  sed 's/ABBRENGBEFORE/@/g' $MYPATH/tmp/$1_tmp/shallow_parser_output_tmp.txt | sed 's/ABBRENGAFTER//g' |sh $MYPATH/tmp/$1_tmp/Symbols_man.sh | sed 's/SYMBOL/@SYMBOL/g' | sed 's/nonascii/@nonascii/g' | sed 's/PUNCT-/@PUNCT-/g' > $MYPATH/tmp/$1_tmp/shallow_parser_output.txt
 
  $HOME_anu_test/miscellaneous/SMT/MINION/alignment/morph.out $MYPATH/tmp/$1_tmp/manual_hin.morph.txt < $MYPATH/tmp/$1_tmp/one_sen_per_line_manual_hindi_sen_tmp.txt.morph > /dev/null

  sed 's/,/ PUNCT-Comma /g'  $MYPATH/tmp/$1_tmp/one_sen_per_line_manual_hindi_sen_tmp4_wx.txt | sed 's/ABBRENGBEFORE/@/g' | sed 's/ABBRENGAFTER//g' |sed 's/,/ PUNCT-Comma /g'| sed 's/\([^0-9]\)\./\1 PUNCT-Dot/g' | sed 's/?/ PUNCT-QuestionMark /g' | sed 's/``/ PUNCT-DoubleQuote /g' | sed "s/''/ PUNCT-DoubleQuote /g" | sed 's/;/ PUNCT-Semicolon  /g' | sed 's/:/ PUNCT-Colon /g' |  sed "s/[\'\`\']/ PUNCT-SingleQuote /g" | sed 's/"/ PUNCT-DoubleQuote /g' | sed 's/ punctOPENPAREN/ PUNCT-OpenParen/g' | sed 's/ punctCLOSEPAREN/ PUNCT-ClosedParen/g' | sed 's/!/ PUNCT-Exclamation /g' | sed  's/^/(manual_hin_sen /'  | sed -n '1h;2,$H;${g;s/\n/)\n;~~~~~~~~~~\n/g;p}' | sed -n '1h;2,$H;${g;s/$/)\n;~~~~~~~~~~\n/g;p}'  |sh $MYPATH/tmp/$1_tmp/Symbols_man.sh |sed 's/SYMBOL/@SYMBOL/g' |sed 's/PUNCT-/ @PUNCT-/g' | sed 's/nonascii/@nonascii/g' > $MYPATH/tmp/$1_tmp/one_sen_per_line_manual_hindi_sen.txt

