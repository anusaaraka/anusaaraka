#Processing manual sentences file and its shallow parser o/p.
#Separated below coding from Anusaaraka_stanford_minion.sh  
#TODO:: This file need to be simplified.

 MYPATH=$HOME_anu_tmp/tmp/$1_tmp
 MYPATH1=$HOME_anu_test/miscellaneous/SMT/MINION/alignment
 
 echo "Pre-proccessing manual file ..."
 #Running below command temporarily . As of now o/p from champollion is in canonical form.
 #If input is from other source then comment the below line and modify the shell accordingly.
 $HOME_anu_test/Anu_data/canonical_form_dictionary/non_canonical_form.out   < $2  >  $MYPATH/$2_in_non_canonical_form
 cd $MYPATH
 $HOME_anu_test/Anu_data/canonical_form_dictionary/canonical_form.out < $2_in_non_canonical_form  > $2_in_canonical_form_tmp
 $HOME_anu_test/Anu_data/canonical_form_dictionary/replacing_canonical.out < $2_in_canonical_form_tmp > $2_in_canonical_form
 $HOME_anu_test/miscellaneous/SMT/MINION/alignment/mapping-symbols_manual.out  Symbols_man.txt_tmp < $2_in_canonical_form > one_sen_per_line_manual_hindi_sen_tmp.txt
 $HOME_anu_test/Anu_src/identify-nonascii-chars.out one_sen_per_line_manual_hindi_sen_tmp.txt one_sen_per_line_manual_hindi_sen_tmp2.txt
 sed 's/nonascii/@nonascii/g' one_sen_per_line_manual_hindi_sen_tmp2.txt > one_sen_per_line_manual_hindi_sen_tmp2.txt1
 wx_utf8 < one_sen_per_line_manual_hindi_sen_tmp2.txt1 > one_sen_per_line_manual_hindi_sen_tmp3.txt
 $MYPATH1/adding@-for-eng-words.out < one_sen_per_line_manual_hindi_sen_tmp3.txt > one_sen_per_line_manual_hindi_sen_tmp4.txt
  
 echo "Running Shallow Parser ..."
 cd $HOME_anu_test/miscellaneous/SHALLOW_PARSER
 sh run_shallow_parser.sh $MYPATH/one_sen_per_line_manual_hindi_sen_tmp4.txt

 echo "Generating canonical form for Shallow Parser Output ..."
 ./adding@-for-eng-words.out < $MYPATH/one_sen_per_line_manual_hindi_sen_tmp4.txt.out > $MYPATH/one_sen_per_line_manual_hindi_sen_tmp4.txt.out1
 cut -f1 $MYPATH/one_sen_per_line_manual_hindi_sen_tmp4.txt.out1 > $MYPATH/tmp1
 cut -f2 $MYPATH/one_sen_per_line_manual_hindi_sen_tmp4.txt.out1 > $MYPATH/tmp2
 cut -f3 $MYPATH/one_sen_per_line_manual_hindi_sen_tmp4.txt.out1 > $MYPATH/tmp3
 cut -f4 $MYPATH/one_sen_per_line_manual_hindi_sen_tmp4.txt.out1 > $MYPATH/tmp4
 utf8_wx $MYPATH/tmp1 > $MYPATH/tmp1_wx
 utf8_wx $MYPATH/tmp2 > $MYPATH/tmp2_wx
 utf8_wx $MYPATH/tmp3 > $MYPATH/tmp3_wx
 utf8_wx $MYPATH/tmp4 > $MYPATH/tmp4_wx
 
 cd $MYPATH/
 $HOME_anu_test/Anu_data/canonical_form_dictionary/canonical_form.out   < tmp1_wx  >  tmp1_canonical_tmp
 $HOME_anu_test/Anu_data/canonical_form_dictionary/canonical_form.out   < tmp2_wx  >  tmp2_canonical_tmp
 $HOME_anu_test/Anu_data/canonical_form_dictionary/canonical_form.out   < tmp3_wx  >  tmp3_canonical_tmp
 $HOME_anu_test/Anu_data/canonical_form_dictionary/canonical_form.out   < tmp4_wx  >  tmp4_canonical_tmp

 $HOME_anu_test/Anu_data/canonical_form_dictionary/replacing_canonical.out  < tmp1_canonical_tmp  >  tmp1_canonical
 $HOME_anu_test/Anu_data/canonical_form_dictionary/replacing_canonical.out  < tmp2_canonical_tmp  >  tmp2_canonical
 $HOME_anu_test/Anu_data/canonical_form_dictionary/replacing_canonical.out  < tmp3_canonical_tmp  >  tmp3_canonical
 $HOME_anu_test/Anu_data/canonical_form_dictionary/replacing_canonical.out  < tmp4_canonical_tmp  >  tmp4_canonical

 paste tmp1_canonical tmp2_canonical tmp3_canonical tmp4_canonical > one_sen_per_line_manual_hindi_sen_tmp4.txt.out_canonical
 sed 's/\t;~~~~~~~~~~//g' one_sen_per_line_manual_hindi_sen_tmp4.txt.out_canonical | sed 's/C@LOSEPAREN/CLOSEPAREN/g' | sed 's/@//g'  > one_sen_per_line_manual_hindi_sen_tmp5.txt

#cd $MYPATH/
 rm tmp1 tmp2 tmp3 tmp4 tmp1_wx tmp2_wx tmp3_wx tmp4_wx 

 utf8_wx one_sen_per_line_manual_hindi_sen_tmp4.txt > one_sen_per_line_manual_hindi_sen_tmp4_wx.txt

  #mapping symbols
 sort -u Symbols_man.txt_tmp > Symbols_man.txt
  echo "dummy_sed	" >>   Symbols_man.txt
  sed 's/^/sed \"s\//g'  Symbols_man.txt  |  sed 's/\t/\//g' | sed 's/$/\/g\" /g' |  sed -n '1h;2,$H;${g;s/\n/ /g;p}' | sed 's/g\"/g\" $1 /' | sed 's/ sed/| sed/g'   > Symbols_man.sh

# echo "Running Full Parser ..."
#
# sed -n '1h;2,$H;${g;s/\([A-Z]\+\)\t\n/\1\t<fs af='\''unk,,,,,,,'\'' head="unk">\n/g;p}' one_sen_per_line_manual_hindi_sen_tmp5.txt | sed -n '1h;2,$H;${g;s/;~~~~~~~~~~\n;~~~~~~~~~~/;~~~~~~~~~~\n<Sentence id="1">\n1\t((\tNP\t<fs af='\''SHALLOW_PARSER_FAILURE,,,,,,,'\''>\n\t))\n<\/Sentence>\n;~~~~~~~~~~/g;p}' > full_parser_input.txt
#
# sh $setu/bin/sl/fullparser/fullparser_hin_run.sh full_parser_input.txt > full_parser_output_tmp.txt
#
# sed 's/ABBRENGBEFORE/@/g' full_parser_output_tmp.txt | sed 's/ABBRENGAFTER//g' | sh Symbols_man.sh | sed 's/SYMBOL/@SYMBOL/g' | sed 's/nonascii/@nonascii/g' | sed 's/PUNCT-/@PUNCT-/g' | sed -n '1h;2,$H;${g;s/<\/Sentence>\n/<\/Sentence>\n;~~~~~~~~~~/g;p}' > full_parser_output.txt
#

 echo "Tokenizing manual sentence"
  sh $HOME_anu_test/miscellaneous/HANDY_SCRIPTS/run_tokenizer_fr.sh one_sen_per_line_manual_hindi_sen_tmp4_wx.txt > one_sen_per_line_manual_hindi_sen_tokenized.txt  2>/dev/null
 cd $MYPATH1
  python add-suf-into-chunks.py $MYPATH/one_sen_per_line_manual_hindi_sen_tokenized.txt $MYPATH/one_sen_per_line_manual_hindi_sen_tmp5.txt > $MYPATH/shallow_parser_output_tmp.txt
  
 cd $HOME_anu_test/bin/
  apertium-destxt $MYPATH/one_sen_per_line_manual_hindi_sen_tmp2.txt  | lt-proc -ac hi.morf.bin | apertium-retxt >  $MYPATH/one_sen_per_line_manual_hindi_sen_tmp.txt.morph

  sed 's/ABBRENGBEFORE/@/g' $MYPATH/shallow_parser_output_tmp.txt | sed 's/ABBRENGAFTER//g' |sh $MYPATH/Symbols_man.sh | sed 's/SYMBOL/@SYMBOL/g' | sed 's/PUNCT-/@PUNCT-/g' > $MYPATH/shallow_parser_output.txt
 
  $MYPATH1/morph.out $MYPATH/manual_hin.morph.txt < $MYPATH/one_sen_per_line_manual_hindi_sen_tmp.txt.morph > /dev/null

  sed 's/,/ PUNCT-Comma /g'  $MYPATH/one_sen_per_line_manual_hindi_sen_tmp4_wx.txt | sed 's/ABBRENGBEFORE/@/g' | sed 's/ABBRENGAFTER//g' |sed 's/,/ PUNCT-Comma /g'| sed 's/\([^0-9]\)\./\1 PUNCT-Dot/g' | sed 's/?/ PUNCT-QuestionMark /g' | sed 's/``/ PUNCT-DoubleQuote /g' | sed "s/''/ PUNCT-DoubleQuote /g" | sed 's/;/ PUNCT-Semicolon  /g' | sed 's/:/ PUNCT-Colon /g' |  sed "s/[\'\`\']/ PUNCT-SingleQuote /g" | sed 's/"/ PUNCT-DoubleQuote /g' | sed 's/ punctOPENPAREN/ PUNCT-OpenParen/g' | sed 's/ punctCLOSEPAREN/ PUNCT-ClosedParen/g' | sed 's/!/ PUNCT-Exclamation /g' | sed  's/^/(manual_hin_sen /'  | sed -n '1h;2,$H;${g;s/\n/)\n;~~~~~~~~~~\n/g;p}' | sed -n '1h;2,$H;${g;s/$/)\n;~~~~~~~~~~\n/g;p}'  |sh $MYPATH/Symbols_man.sh |sed 's/SYMBOL/@SYMBOL/g' |sed 's/PUNCT-/ @PUNCT-/g'  > $MYPATH/one_sen_per_line_manual_hindi_sen.txt

