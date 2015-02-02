#/bin/sh
 source ~/.bashrc

  MYPATH=$HOME_anu_tmp/tmp/$1_tmp
  PHRASAL_PATH=$HOME_anu_test/miscellaneous/SMT/phrasal_alignment

  $HOME_anu_test/Anu_src/identify-nonascii-chars.out $2 $MYPATH/hnd1
  sed -i  '1iparIkRaNa .' $MYPATH/hnd1
  perl $HOME_anu_test/miscellaneous/HANDY_SCRIPTS/tokenizer.perl -l en < $MYPATH/hnd1 | sed "s/ 's /'s /g" | sed "s/s ' /s' /g" | sed 's/^@[ ]/@/g' | sed 's/^/_/g' | sed 's/[ ]@[ ]/ @/g' | sed 's/ /_/g' |  sed 's/$/_/g' > $MYPATH/hnd_tmp

  $HOME_anu_test/Anu_data/canonical_form_dictionary/get_canonical_form-dic.out $MYPATH/hnd_tmp > $MYPATH/hnd_tmp1
  $HOME_anu_test/Anu_data/canonical_form_dictionary/canonical_form_correction.out  < $MYPATH/hnd_tmp1 > $MYPATH/hnd_tmp2
  $HOME_anu_test/Anu_data/canonical_form_dictionary/canonical_to_conventional.out  < $MYPATH/hnd_tmp2 > $MYPATH/hnd

  perl $HOME_anu_test/miscellaneous/HANDY_SCRIPTS/tokenizer.perl -l en < $MYPATH/hnd | sed "s/ 's /'s /g" | sed "s/s ' /s' /g" | sed 's/ @ / @/g' | sed 's/[ ]\.\([^$]\)/\.\1/g' > $MYPATH/hnd-hi-en


  cd $PHRASAL_PATH
  sh get_pos_chunk.sh $MYPATH
  replace-abbrevations.sh $MYPATH/one_sentence_per_line.txt_tokenised  $MYPATH/eng_tmp_tok_org
  $HOME_anu_test/Anu/stdenglish/replace-mapping-symbols.out < $MYPATH/eng_tmp_tok_org > $MYPATH/eng_tmp1_tok_org
  $HOME_anu_test/Anu_src/identify-nonascii-chars.out $MYPATH/eng_tmp1_tok_org $MYPATH/eng_tmp2_tok_org
  perl $HOME_anu_test/miscellaneous/HANDY_SCRIPTS/tokenizer.perl -l en < $MYPATH/eng_tmp2_tok_org | sed "s/ 's /'s /" | sed "s/s ' /s' /g" | sed 's/ @ / @/g'> $MYPATH/eng_tok_org 

  echo "Alignment through Phrasal"
  echo "extracting keys from english sentence"
  if [ "$3" != "" ] ; then
	cd $HOME_anu_test/multifast-v1.4.2/src/phrasal_mwe	
	cp extract_key_$3.c extract_key.c
	cp extract_key-hi-en_$3.c extract_key-hi-en.c
	make clean > /dev/null
	make > /dev/null
	./extract_key_using_multifast $MYPATH/eng_tok_org $MYPATH/map.txt > $MYPATH/key.txt
	./extract_key_using_multifast-hi-en $MYPATH/eng_tok_org $MYPATH/map-hi-en.txt > $MYPATH/key-hi-en.txt 
  else
	echo "Please specify the domain to run further...EXITING"
	exit
  fi       
  cd $PHRASAL_PATH 
  sed -n -e "H;\${g;s/\n/\n;~~~~~~~~~~\n/g;p}"  $MYPATH/hnd >  $MYPATH/hnd-sent
  sed 1,2d $MYPATH/hnd-sent > $MYPATH/hnd-sent1 
  sed -n -e "H;\${g;s/\n/\n;~~~~~~~~~~\n/g;p}"  $MYPATH/eng_tok_org >  $MYPATH/eng_tok_org-sent
  sed 1,2d $MYPATH/eng_tok_org-sent > $MYPATH/eng_tok_org-sent1
  sed -n -e "H;\${g;s/\n/\n;~~~~~~~~~~\n/g;p}"  $MYPATH/hnd-hi-en >  $MYPATH/hnd-hi-en-sent
  sed 1,2d $MYPATH/hnd-hi-en-sent > $MYPATH/hnd-hi-en-sent1 
  ./replace-punctuation.out < $MYPATH/hnd-hi-en > $MYPATH/hnd-hi-en-map-punc
  sed 's/\([0-9]\)[.]\([0-9]\)/\1SYMBOL-DOT\2/g'  $MYPATH/hnd-hi-en-map-punc | sed 's/_/ /g' | sed 's/  / /g'| sed 's/^(/PUNCT-OpenParen/g' | sed 's/)$/PUNCT-ClosedParen/g' | sed 's/^;/PUNCT-Semicolon/g' | sed  's/^/(manual_hin_sen /'  | sed -n '1h;2,$H;${g;s/\n/)\n;~~~~~~~~~~\n/g;p}' | sed -n '1h;2,$H;${g;s/$/)\n;~~~~~~~~~~\n/g;p}'|sed -n '1h;2,$H;${g;s/\([^0-9]\)\.)\n/\1 PUNCT-Dot)\n/g;p}'| sed 's/SYMBOL/@SYMBOL/g' | sed 's/PUNCT-/@PUNCT-/g'  | sed 's/nonascii/@nonascii/g' > $MYPATH/one_sen_per_line_manual_hindi_sen.txt

  cd $HOME_anu_test/bin/
  apertium-destxt $MYPATH/hnd | lt-proc -ac hi.morf.bin | apertium-retxt >  $MYPATH/one_sen_per_line_manual_hindi_sen_tmp.txt.morph

  $HOME_anu_test/miscellaneous/SMT/MINION/alignment/morph.out $MYPATH/manual_hin.morph.txt $MYPATH/manual_hin.tam.txt < $MYPATH/one_sen_per_line_manual_hindi_sen_tmp.txt.morph > /dev/null

 cd $MYPATH
 $HOME_anu_test/Anu_src/split_file.out key.txt  dir_names.txt  key_tmp.dat
 $HOME_anu_test/Anu_src/split_file.out key-hi-en.txt  dir_names.txt  key-hi-en_tmp.dat
 $HOME_anu_test/Anu_src/split_file.out map.txt  dir_names.txt  map.dat
 $HOME_anu_test/Anu_src/split_file.out map-hi-en.txt  dir_names.txt  map-hi-en.dat
 $HOME_anu_test/Anu_src/split_file.out hnd-sent1 dir_names.txt  hnd
 $HOME_anu_test/Anu_src/split_file.out hnd-hi-en-sent1 dir_names.txt  hnd-hi-en
 $HOME_anu_test/Anu_src/split_file.out eng_tok_org-sent1 dir_names.txt  eng_tok_org
 $HOME_anu_test/Anu_src/split_file.out manual_hin.morph.txt dir_names.txt manual_hin.morph.dat
 $HOME_anu_test/Anu_src/split_file.out manual_hin.tam.txt dir_names.txt manual_hin.tam.dat
 $HOME_anu_test/Anu_src/split_file.out one_sen_per_line_manual_hindi_sen.txt dir_names.txt manual_hindi_sen.dat
 $HOME_anu_test/Anu_src/split_file.out pos.txt dir_names.txt pos.dat
 $HOME_anu_test/Anu_src/split_file.out chunk_info.txt dir_names.txt chunk_info.dat

 cd $PHRASAL_PATH
 while read line
 do 
	sh run_alignment.sh $MYPATH/$line $3
	sh run_alignment-hi-en.sh $MYPATH/$line $3
        cd $HOME_anu_test/bin 
	sh run_alignment.sh $MYPATH/$line $1
	cd $PHRASAL_PATH
 done < $MYPATH/dir_names.txt

 cd $MYPATH
 sh $HOME_anu_test/miscellaneous/SMT/MINION/browser/run_align_browser_eng.sh $HOME_anu_test $1 $HOME_anu_tmp $HOME_anu_output
