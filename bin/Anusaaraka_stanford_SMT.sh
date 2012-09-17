#/bin/sh
 source ~/.bashrc

 export LC_ALL=
 export LC_ALL=en_US.UTF-8

 if ! [ -d $HOME_anu_tmp ] ; then
     echo $HOME_anu_tmp " directory does not exist "
     echo "Creating "$HOME_anu_tmp 
     mkdir $HOME_anu_tmp
 fi

 if ! [ -d $HOME_anu_output ] ; then
     echo $HOME_anu_output " directory does not exist "
     echo "Creating "$HOME_anu_output 
    mkdir $HOME_anu_output
 fi

 MYPATH=$HOME_anu_tmp
 cp $1 $MYPATH/. 

 if ! [ -d $MYPATH/tmp ] ; then
    echo "tmp  does not exist "
    echo " Creating tmp "
    mkdir $MYPATH/tmp
 fi

 if ! [ -d $HOME_anu_output/help ] ; then
    echo "help dir  does not exist "
    echo "Creating help dir"
    mkdir $HOME_anu_output/help
 fi

 if  [ -e $MYPATH/tmp/$1_tmp ] ; then
    rm -rf $MYPATH/tmp/$1_tmp
 fi

 mkdir $MYPATH/tmp/$1_tmp
 $HOME_anu_test/Anu_src/identify-nonascii-chars.out $5 $MYPATH/tmp/$1_tmp/one_sen_per_line_manual_hindi_sen_tmp.txt
 $HOME_anu_test/Anu_src/identify-nonascii-chars.out $6 $MYPATH/tmp/$1_tmp/shallow_parser_output_tmp.txt
 sh $HOME_anu_test/miscellaneous/HANDY_SCRIPTS/run_tokenizer_fr.sh $5 > $MYPATH/tmp/$1_tmp/one_sen_per_line_manual_hindi_sen_tokenized.txt

###Added below loop for server purpose.
 if [ "$3" == "True" ] ; then 
    echo "" > $MYPATH/tmp/$1_tmp/sand_box.dat
 else
    echo "(not_SandBox)"  > $MYPATH/tmp/$1_tmp/sand_box.dat
 fi

 echo "Saving Format info ..."

 $HOME_anu_test/Anu/stdenglish.sh $1 $MYPATH
 $HOME_anu_test/Anu/pre_process.sh $1 $MYPATH
 $HOME_anu_test/Anu/save_format.sh $1 $MYPATH

# echo "Calling Transliteration"
# sed 's/ /\n/g' $MYPATH/tmp/$1.snt |sed -n '/^[a-z0-9]/ !p' >$MYPATH/tmp/$1_tmp/proper_nouns_list_tmp.txt
# tr 'A-Z' 'a-z' < $MYPATH/tmp/$1_tmp/proper_nouns_list_tmp.txt > $MYPATH/tmp/$1_tmp/proper_nouns_list.txt
# cd $HOME_anu_test/miscellaneous/transliteration/work
# sh transliteration-script.sh $MYPATH/tmp/$1_tmp proper_nouns_list.txt 2>/dev/null 
# paste $MYPATH/tmp/$1_tmp/proper_nouns_list_tmp.txt $MYPATH/tmp/$1_tmp/proper_nouns_list.txt.wx |sed 's/^/(eng_word-man_wx_word\t/g' |sed 's/$/)/g' |sed 's/(eng_word-man_wx_word\t\t)/;~~~~~~~~~~/g' > $MYPATH/tmp/$1_tmp/wx_output.txt

 echo "Saving word information"
 cd $HOME_anu_test/Anu_src
 ./word.out < $MYPATH/tmp/tmp_save_format/$1.fmt_split $MYPATH/tmp $1
 ./rm_tags.out < $MYPATH/tmp/$1_tmp/new_text.txt > $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt

  echo "Saving morph information"
  cd $HOME_anu_test/apertium/
  sed 's/\([^0-9]\)\.\([^0-9]*\)/\1 \.\2/g'  $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt | sed 's/?/ ?/g'| sed 's/\"/\" /g'  | sed 's/!/ !/g' > $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt_tmp
  apertium-destxt $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt_tmp  | lt-proc -a en.morf.bin | apertium-retxt > $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt.morph
  perl morph.pl $MYPATH $1 < $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt.morph

  echo "Calling POS Tagger and Chunker (APERTIUM)" 
  cd $HOME_anu_test/apertium
  sh run_chunker_and_tagger.sh $1

#  cd $HOME_anu_test/Anu_src
#  ./aper_chunker.out $MYPATH/tmp/$1_tmp/chunk.txt < $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt.chunker

  replace-abbrevations.sh $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt  $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt_tmp_org
  cd $HOME_anu_test/Anu_src/
  ./replace_nonascii-chars.out $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt_tmp_org $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt_org

  echo "Calling Stanford parser"
  cd $HOME_anu_test/Parsers/stanford-parser/stanford-parser-2010-11-30/
 #cd $HOME_anu_test/Parsers/stanford-parser/stanford-parser-2012-01-06/
  if [ "$2" != "" -a "$2" != "0" ] ;
  then
  sh run_multiple_parse_penn.sh $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt_org > $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt.std.penn_tmp1 2>/dev/null  
  python preffered_parse.py $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt.std.penn_tmp1 $2 > $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt.std.penn_tmp 2>/dev/null
  else 
  sh run_penn-pcfg.sh $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt_org > $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt.std.penn_tmp 2>/dev/null
  fi
  sed -n -e "H;\${g;s/Sentence skipped: no PCFG fallback.\nSENTENCE_SKIPPED_OR_UNPARSABLE/(ROOT (S ))\n/g;p}"  $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt.std.penn_tmp  > $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt.std.penn_tmp1
  sh run_stanford-parser.sh $1 $MYPATH > /dev/null

  #running stanford NER (Named Entity Recogniser) on whole text.
  echo "Finding NER... "
  cd $HOME_anu_test/Parsers/stanford-parser/stanford-ner-2008-05-07/
  sh run-ner.sh $1

  cd $MYPATH/tmp/$1_tmp
  sed 's/&/\&amp;/g' one_sentence_per_line.txt|sed -e s/\'/\\\'/g |sed 's/\"/\&quot;/g' |sed  "s/^/(Eng_sen \"/" |sed -n '1h;2,$H;${g;s/\n/\")\n;~~~~~~~~~~\n/g;p}'|sed -n '1h;2,$H;${g;s/$/\")\n;~~~~~~~~~~\n/g;p}' > one_sentence_per_line_tmp.txt
  $HOME_anu_test/Anu_src/split_file.out one_sentence_per_line_tmp.txt dir_names.txt English_sentence.dat
  #$HOME_anu_test/Anu_src/split_file.out chunk.txt dir_names.txt chunk.dat
  $HOME_anu_test/Anu_src/split_file.out sd-lexicalize_info.txt dir_names.txt sd-lexicalize_info.dat
  $HOME_anu_test/Anu_src/split_file.out sd-tree_relation.txt dir_names.txt sd-tree_relations_tmp.dat
  $HOME_anu_test/Anu_src/split_file.out sd-basic_relation.txt dir_names.txt sd-basic_relations_tmp1.dat
  $HOME_anu_test/Anu_src/split_file.out sd-propagation_relations.txt dir_names.txt sd-propagation_relations_tmp1.dat
  $HOME_anu_test/Anu_src/split_file.out sd_word.txt dir_names.txt sd_word_tmp.dat
  $HOME_anu_test/Anu_src/split_file.out sd_numeric_word.txt dir_names.txt sd_numeric_word_tmp.dat
  $HOME_anu_test/Anu_src/split_file.out sd_category.txt dir_names.txt sd_category_tmp.dat
  $HOME_anu_test/Anu_src/split_file.out one_sentence_per_line.txt.ner dir_names.txt ner.dat

  #################   SMT ####################
  cd $HOME_anu_test/bin/
  apertium-destxt $MYPATH/tmp/$1_tmp/one_sen_per_line_manual_hindi_sen_tmp.txt  | lt-proc -ac hi.morf.bin | apertium-retxt > $MYPATH/tmp/$1_tmp/one_sen_per_line_manual_hindi_sen_tmp.txt.morph

  cd $HOME_anu_test/miscellaneous/SMT/alignment
  $HOME_anu_test/miscellaneous/SMT/alignment/morph.out $MYPATH/tmp/$1_tmp/manual_hin.morph.txt < $MYPATH/tmp/$1_tmp/one_sen_per_line_manual_hindi_sen_tmp.txt.morph > /dev/null
  python add-suf-into-chunks.py $MYPATH/tmp/$1_tmp/one_sen_per_line_manual_hindi_sen_tokenized.txt $MYPATH/tmp/$1_tmp/shallow_parser_output_tmp.txt > $MYPATH/tmp/$1_tmp/shallow_parser_output_tmp1.txt

  cd $MYPATH/tmp/$1_tmp
  sed 's/,/ @PUNCT-Comma /g'  one_sen_per_line_manual_hindi_sen_tmp.txt  |  sed 's/\([^0-9]\)\./\1 @PUNCT-Dot/g' | sed 's/?/ @PUNCT-QuestionMark /g' | sed 's/``/ @PUNCT-DoubleQuote /g' | sed "s/''/ @PUNCT-DoubleQuote /g" | sed 's/;/ @PUNCT-Semicolon /g' | sed 's/:/ @PUNCT-Colon /g' |  sed "s/[\'\`\']/ @PUNCT-SingleQuote /g" | sed 's/"/ @PUNCT-DoubleQuote /g' | sed 's/(/ @PUNCT-OpenParen /g' | sed 's/)/ @PUNCT-ClosedParen /g' | sed 's/!/ @PUNCT-Exclamation /g' | sed 's/\$/ @SYM-Dollar /g' |  sed  's/^/(manual_hin_sen /'  | sed -n '1h;2,$H;${g;s/\n/)\n;~~~~~~~~~~\n/g;p}' | sed -n '1h;2,$H;${g;s/$/)\n;~~~~~~~~~~\n/g;p}' | sed 's/nonascii/@nonascii/g' | sed 's/+/ @SYM-Plus /g' | sed 's/=/ @SYM-EqualTo /g' | sed 's/%/ @SYM-Percent /g' | sed 's/β/ @SYM-Beta /g' > one_sen_per_line_manual_hindi_sen.txt

  $HOME_anu_test/Anu_src/split_file.out one_sen_per_line_manual_hindi_sen.txt dir_names.txt manual_hindi_sen.dat
  sed 's/<\/Sentence>/<\/Sentence>\n;~~~~~~~~~~\n/g' shallow_parser_output_tmp1.txt > shallow_parser_output.txt

  $HOME_anu_test/Anu_src/split_file.out shallow_parser_output.txt dir_names.txt shallow_parser_output.dat
  $HOME_anu_test/Anu_src/split_file.out manual_hin.morph.txt dir_names.txt manual_hin.morph.dat
#  $HOME_anu_test/Anu_src/split_file.out wx_output.txt dir_names.txt wx_output.dat
  #########################################

  $HOME_anu_test/Anu_src/split_file.out sd-original-relations.txt  dir_names.txt  sd-original-relations.dat

  grep -v '^$' $MYPATH/tmp/$1.snt  > $1.snt
  perl $HOME_anu_test/Anu_src/Match-sen.pl $HOME_anu_test/Anu_databases/Complete_sentence.gdbm  $1.snt one_sentence_per_line.txt > sen_phrase.txt

  $HOME_anu_test/Anu_src/split_file.out sen_phrase.txt dir_names.txt sen_phrase.dat
 
 cd $HOME_anu_test/bin
 while read line
 do
    echo "Hindi meaning using Stanford parser" $line
    cp $MYPATH/tmp/$1_tmp/sand_box.dat $MYPATH/tmp/$1_tmp/$line/
    timeout 500 ./run_sentence_stanford_SMT.sh $1 $line 1 $MYPATH $4
    echo ""
 done < $MYPATH/tmp/$1_tmp/dir_names.txt

 echo "Calling Transliteration"
 cd $HOME_anu_test/miscellaneous/transliteration/work
 sh run_transliteration.sh $MYPATH/tmp $1

 cd $MYPATH/tmp/$1_tmp/
 echo "(defglobal ?*path* = $HOME_anu_test)" > path_for_html.clp
 echo "(defglobal ?*mypath* = $MYPATH)" >> path_for_html.clp
 echo "(defglobal ?*filename* = $1)" >> path_for_html.clp

 echo "Calling Interface related programs"
 sh $HOME_anu_test/bin/run_anu_browser.sh $HOME_anu_test $1 $MYPATH $HOME_anu_output
 sh $HOME_anu_test/miscellaneous/SMT/alignment/browser/run_align_browser.sh $HOME_anu_test $1 $MYPATH $HOME_anu_output
