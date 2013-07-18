#Processing manual sentences file and its shallow parser o/p.
#Separated below coding from Anusaaraka_stanford_minion.sh  
#TODO:: This file need to be simplified.

 MYPATH=$HOME_anu_tmp/tmp/$1_tmp
 MYPATH1=$HOME_anu_test/miscellaneous/SMT/MINION/alignment
  
########################### Pre-proccessing Manual Sentence ######################################

 echo "Pre-proccessing manual file ..."
 #Running below command temporarily . As of now o/p from champollion is in canonical form.
 #If input is from other source then comment the below line and modify the shell accordingly.
 $HOME_anu_test/Anu_data/canonical_form_dictionary/non_canonical_form.out   < $2  >  $MYPATH/$2_in_non_canonical_form
 cd $MYPATH
 $HOME_anu_test/Anu_src/identify-nonascii-chars.out $2_in_non_canonical_form  shallow_parser_input.txt
 sed -i 's/nonascii/@nonascii/g' shallow_parser_input.txt
 sed -i 's/\// @symbolSLASH /g' shallow_parser_input.txt
  
 echo "Running Shallow Parser ..."
 cd $HOME_anu_test/miscellaneous/SHALLOW_PARSER
 sh run_shallow_parser.sh $MYPATH/shallow_parser_input.txt

#################### Canonical Form For Shallow Parser & Manual Sentence ########################

 echo "Generating canonical form for Shallow Parser Output ..."
 ./adding@-for-eng-words.out < $MYPATH/shallow_parser_input.txt.out > $MYPATH/shallow_parser_input.txt.out1
 cut -f1 $MYPATH/shallow_parser_input.txt.out1 > $MYPATH/tmp1
 cut -f2 $MYPATH/shallow_parser_input.txt.out1 > $MYPATH/tmp2
 cut -f3 $MYPATH/shallow_parser_input.txt.out1 > $MYPATH/tmp3
 cut -f4 $MYPATH/shallow_parser_input.txt.out1 > $MYPATH/tmp4
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

 paste tmp1_canonical tmp2_canonical tmp3_canonical tmp4_canonical > shallow_parser_input.txt.out_canonical_tmp
 sed 's/\t;~~~~~~~~~~//g' shallow_parser_input.txt.out_canonical_tmp | sed 's/\t<\/@Sentence>//g' |sed 's/@@/AT_THE_RATE_SYMBOL/g' | sed 's/@//g'  | sed 's/AT_THE_RATE_SYMBOL/@/g'  | sed 's/@symbolSLASH/@SYMBOL-SLASH/g' > shallow_parser_input.txt.out_canonical

 rm tmp1 tmp2 tmp3 tmp4 tmp1_wx tmp2_wx tmp3_wx tmp4_wx 

 utf8_wx shallow_parser_input.txt > one_sen_per_line_manual_hindi_sen_wx.txt
 $HOME_anu_test/Anu_data/canonical_form_dictionary/canonical_form.out < one_sen_per_line_manual_hindi_sen_wx.txt  > one_sen_per_line_manual_hindi_sen_wx_in_canonical_form.txt_tmp
 $HOME_anu_test/Anu_data/canonical_form_dictionary/replacing_canonical.out < one_sen_per_line_manual_hindi_sen_wx_in_canonical_form.txt_tmp > one_sen_per_line_manual_hindi_sen_wx_in_canonical_form.txt

sed -i 's/@symbolSLASH/@SYMBOL-SLASH/g' one_sen_per_line_manual_hindi_sen_wx_in_canonical_form.txt

########################### Running Full Parser ##################################################

 if [ "$3" == "full" ]; then 
 	echo "Running Full Parser ..."

 	sed -n '1h;2,$H;${g;s/\([A-Z]\+\)\t\n/\1\t<fs af='\''unk,,,,,,,'\'' head="unk">\n/g;p}' shallow_parser_input.txt.out_canonical | sed -n '1h;2,$H;${g;s/;~~~~~~~~~~\n;~~~~~~~~~~/;~~~~~~~~~~\n<Sentence id="1">\n1\t((\tNP\t<fs af='\''SHALLOW_PARSER_FAILURE,,,,,,,'\''>\n\t))\n<\/Sentence>\n;~~~~~~~~~~/g;p}' > full_parser_input.txt

 	sh $setu/bin/sl/fullparser/fullparser_hin_run.sh full_parser_input.txt > full_parser_output_tmp.txt

 	sed 's/SYMBOL/@SYMBOL/g' full_parser_output_tmp.txt | sed 's/nonascii/@nonascii/g' | sed 's/PUNCT-/@PUNCT-/g' | sed -n '1h;2,$H;${g;s/<\/Sentence>\n/<\/Sentence>\n;~~~~~~~~~~/g;p}' > full_parser_output.txt
 fi
 
########################### Tokenizing Manual Sentence ###########################################

 echo "Tokenizing manual sentence"
  sh $HOME_anu_test/miscellaneous/HANDY_SCRIPTS/run_tokenizer_fr.sh one_sen_per_line_manual_hindi_sen_wx_in_canonical_form.txt > one_sen_per_line_manual_hindi_sen_tokenized.txt  2>/dev/null

 sed -i 's/@ /@/g' $MYPATH/one_sen_per_line_manual_hindi_sen_tokenized.txt
 sed -i 's/\(@nonascii[0-9]*\) \(@[a-zA-Z]\)/\1\2/g' $MYPATH/one_sen_per_line_manual_hindi_sen_tokenized.txt


########################### Adding suffix information ############################################

 cd $MYPATH1
  python add-suf-into-chunks.py $MYPATH/one_sen_per_line_manual_hindi_sen_tokenized.txt $MYPATH/shallow_parser_input.txt.out_canonical > $MYPATH/shallow_parser_output.txt
 
########################### Extracting Morph information #########################################

 cd $HOME_anu_test/bin/
  apertium-destxt $MYPATH/one_sen_per_line_manual_hindi_sen_wx_in_canonical_form.txt | lt-proc -ac hi.morf.bin | apertium-retxt >  $MYPATH/one_sen_per_line_manual_hindi_sen_tmp.txt.morph

  $MYPATH1/morph.out $MYPATH/manual_hin.morph.txt < $MYPATH/one_sen_per_line_manual_hindi_sen_tmp.txt.morph > /dev/null
  
########################### Post proccessing Manual Sentence #####################################

 sed 's/,/ PUNCT-Comma /g' $MYPATH/one_sen_per_line_manual_hindi_sen_wx_in_canonical_form.txt |  sed 's/?/ PUNCT-QuestionMark /g' | sed 's/``/ PUNCT-DoubleQuote /g' | sed "s/''/ PUNCT-DoubleQuote /g" | sed 's/;/ PUNCT-Semicolon  /g' | sed 's/:/ PUNCT-Colon /g' |  sed "s/[\'\`\']/ PUNCT-SingleQuote /g" | sed 's/"/ PUNCT-DoubleQuote /g' | sed 's/(/ PUNCT-OpenParen /g' | sed 's/)/ PUNCT-ClosedParen /g' | sed 's/!/ PUNCT-Exclamation /g' | sed 's/{/ PUNCT-LeftCurlyBrace /g' | sed 's/}/ PUNCT-RightCurlyBrace /g' | sed 's/\[/ PUNCT-LeftSquareBracket /g' | sed 's/]/ PUNCT-RightSquareBracket /g' | sed 's/=/ SYMBOL-EQUAL-TO /g' | sed 's/+/ SYMBOL-PLUS /g' | sed 's/\([0-9]\)[.]\([0-9]\)/\1SYMBOL-DOT\2/g' | sed  's/^/(manual_hin_sen /'  | sed -n '1h;2,$H;${g;s/\n/)\n;~~~~~~~~~~\n/g;p}' | sed -n '1h;2,$H;${g;s/$/)\n;~~~~~~~~~~\n/g;p}'|sed -n '1h;2,$H;${g;s/\([^0-9]\)\.)\n/\1 PUNCT-Dot)\n/g;p}'| sed 's/SYMBOL/@SYMBOL/g' | sed 's/PUNCT-/@PUNCT-/g'  > $MYPATH/one_sen_per_line_manual_hindi_sen.txt
