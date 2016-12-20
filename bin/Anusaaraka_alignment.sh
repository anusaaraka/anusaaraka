#/bin/sh
 source ~/.bashrc

  MYPATH=$HOME_anu_tmp/tmp/$1_tmp
  PHRASAL_PATH=$HOME_anu_test/miscellaneous/SMT/phrasal_alignment
  
  if [ "$4" != "" ] ; then
	  cp $4 $MYPATH/    #ilparser
	  sh $HOME_anu_test/miscellaneous/SMT/dependency_alignment/get_conll_info.sh $MYPATH $4
  else
	touch 	$MYPATH/hnd_parser_relns.txt
        touch 	$MYPATH/hnd_root_and_tam_info.txt	
  fi
 # cp $1_align.txt $2_org $MYPATH/   #omitted sentencses info

  #Running below command temporarily . As of now o/p from champollion is in canonical form.
  #If input is from other source then comment the below line and modify the shell accordingly.
  #Ex: karezge . This is stored in dic as 'kareMge'. To get root and tam info etc. doing below step
  $HOME_anu_test/Anu_data/canonical_form_dictionary/non_canonical_form.out   < $2  >  $MYPATH/hnd_non_canonical_form

  $HOME_anu_test/Anu_src/identify-nonascii-chars.out $MYPATH/hnd_non_canonical_form  $MYPATH/hnd1
  sed -i  '1iparIkRaNa .' $MYPATH/hnd1
  perl $HOME_anu_test/miscellaneous/HANDY_SCRIPTS/tokenizer.perl -l en < $MYPATH/hnd1 | sed "s/ 's /'s /g" | sed "s/s ' /s' /g" | sed 's/^@[ ]/@/g' | sed 's/^/_/g' | sed 's/[ ]@[ ]/ @/g' | sed 's/ /_/g' |  sed 's/$/_/g' > $MYPATH/hnd_tmp

  $HOME_anu_test/Anu_data/canonical_form_dictionary/get_canonical_form-dic.out $MYPATH/hnd_tmp > $MYPATH/hnd_tmp1
  #$HOME_anu_test/Anu_data/canonical_form_dictionary/get_canonical_form-dic.out $MYPATH/hnd1 > $MYPATH/hnd_tmp1
  $HOME_anu_test/Anu_data/canonical_form_dictionary/canonical_form_correction.out  < $MYPATH/hnd_tmp1 > $MYPATH/hnd_tmp2
  $HOME_anu_test/Anu_data/canonical_form_dictionary/canonical_to_conventional.out  < $MYPATH/hnd_tmp2 > $MYPATH/hnd

  perl $HOME_anu_test/miscellaneous/HANDY_SCRIPTS/tokenizer.perl -l en < $MYPATH/hnd | sed "s/ 's /'s /g" | sed "s/s ' /s' /g" | sed 's/ @ / @/g' | sed 's/[ ]\.\([^$]\)/\.\1/g' > $MYPATH/hnd-hi-en

  #------rule base ---------------
  sed 's/^_//g' $MYPATH/hnd | sed 's/_$//g' | sed 's/_/ /g' | sed 's/ - /-/g' > $MYPATH/hnd_sent.txt

  cd $PHRASAL_PATH
  sh get_pos_chunk.sh $MYPATH
  replace-abbrevations.sh $MYPATH/one_sentence_per_line.txt_tokenised  $MYPATH/eng_tmp_tok_org
  $HOME_anu_test/Anu/stdenglish/replace-mapping-symbols.out < $MYPATH/eng_tmp_tok_org > $MYPATH/eng_tmp1_tok_org
  $HOME_anu_test/Anu_src/identify-nonascii-chars.out $MYPATH/eng_tmp1_tok_org $MYPATH/eng_tmp2_tok_org
  perl $HOME_anu_test/miscellaneous/HANDY_SCRIPTS/tokenizer.perl -l en < $MYPATH/eng_tmp2_tok_org | sed "s/ 's /'s /" | sed "s/s ' /s' /g" | sed 's/ @ / @/g'> $MYPATH/eng_tok_org 

  echo "Alignment through Phrasal"
  echo "extracting keys from english sentence"
  if [ "$3" == "general" ] ; then
	cd $HOME_anu_test/multifast-v1.4.2/src/phrasal_mwe	
	./extract_key_using_multifast $MYPATH/eng_tok_org $MYPATH/map.txt > $MYPATH/key.txt
	./extract_key_using_multifast-hi-en $MYPATH/eng_tok_org $MYPATH/map-hi-en.txt > $MYPATH/key-hi-en.txt 
  elif [ "$3" != "" ] ; then
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
 # sed -n -e "H;\${g;s/\n/\n;~~~~~~~~~~\n/g;p}"  $MYPATH/hnd_tmp >  $MYPATH/hnd-sent
  sed 1,2d $MYPATH/hnd-sent > $MYPATH/hnd-sent1 
  sed -n -e "H;\${g;s/\n/\n;~~~~~~~~~~\n/g;p}"  $MYPATH/eng_tok_org >  $MYPATH/eng_tok_org-sent
  sed 1,2d $MYPATH/eng_tok_org-sent > $MYPATH/eng_tok_org-sent1
  sed -n -e "H;\${g;s/\n/\n;~~~~~~~~~~\n/g;p}"  $MYPATH/hnd-hi-en >  $MYPATH/hnd-hi-en-sent
  sed 1,2d $MYPATH/hnd-hi-en-sent > $MYPATH/hnd-hi-en-sent1 
  ./replace-punctuation.out < $MYPATH/hnd-hi-en > $MYPATH/hnd-hi-en-map-punc
  sed 's/\([0-9]\)[.]\([0-9]\)/\1SYMBOL-DOT\2/g'  $MYPATH/hnd-hi-en-map-punc |  sed 's/_/ /g' | sed 's/   / /g' | sed 's/ - /-/g'  | sed 's/^(/PUNCT-OpenParen/g' | sed 's/)$/PUNCT-ClosedParen/g' | sed 's/^;/PUNCT-Semicolon/g' | sed  's/^/(manual_hin_sen /'  | sed -n '1h;2,$H;${g;s/\n/)\n;~~~~~~~~~~\n/g;p}' | sed -n '1h;2,$H;${g;s/$/)\n;~~~~~~~~~~\n/g;p}'|sed -n '1h;2,$H;${g;s/\([^0-9]\)\.)\n/\1 PUNCT-Dot)\n/g;p}'| sed 's/SYMBOL/@SYMBOL/g' | sed 's/PUNCT-/@PUNCT-/g'  | sed 's/nonascii/@nonascii/g'  > $MYPATH/one_sen_per_line_manual_hindi_sen.txt

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
 $HOME_anu_test/Anu_src/split_file.out manual_hin.morph.txt dir_names.txt manual_hin.morph_tmp.dat
 $HOME_anu_test/Anu_src/split_file.out manual_hin.tam.txt dir_names.txt manual_hin.tam.dat
 $HOME_anu_test/Anu_src/split_file.out one_sen_per_line_manual_hindi_sen.txt dir_names.txt manual_hindi_sen.dat
 $HOME_anu_test/Anu_src/split_file.out pos.txt dir_names.txt pos.dat
 $HOME_anu_test/Anu_src/split_file.out chunk_info.txt dir_names.txt chunk_info.dat

 #--------------    dependency alignment files -----------------

 $HOME_anu_test/Anu_src/split_file.out hnd_parser_relns.txt dir_names.txt hindi_parser_rel_ids_tmp.dat
 $HOME_anu_test/Anu_src/split_file.out hnd_root_and_tam_info.txt dir_names.txt hindi_root_and_tam_info.dat
 #$HOME_anu_test/Anu_src/split_file.out hnd_parser_cat.txt dir_names.txt hindi_parser_cat.dat

 rm -f */total-left-over.dat

# python $HOME_anu_test/miscellaneous/SMT/phrasal_alignment/get_omitted_sent_info.py $1_align.txt $2_org
# python $HOME_anu_test/miscellaneous/SMT/phrasal_alignment/get_omitted_sent_info.py $4 $5

 #----------------  Rule based Hindi parser -----------------------
 python $rule_based_parser/src/get_ids_for_hnd_sent.py $MYPATH/hnd_sent.txt > $MYPATH/hnd_wrd.txt
 $HOME_anu_test/Anu_src/split_file.out hnd_wrd.txt   dir_names.txt hnd_wrd.dat
 $rule_based_parser/src/morph.out $MYPATH/hnd.morph_tmp.txt $MYPATH/hnd_hin.tam.txt < $MYPATH/one_sen_per_line_manual_hindi_sen_tmp.txt.morph > /dev/null
 $HOME_anu_test/Anu_src/split_file.out hnd.morph_tmp.txt dir_names.txt hnd.morph_tmp1.dat

 echo "Calling Transliteration"
 cd $HOME_anu_test/miscellaneous/transliteration/work

 tr ' ' '\n' <  $HOME_anu_tmp/tmp/$1.snt > $MYPATH/words
 sort -u $MYPATH/words | grep -v "^$" > $MYPATH/sorted_words
 sh transliteration-script.sh $MYPATH sorted_words 2> /dev/null

 paste $MYPATH/sorted_words $MYPATH/sorted_words.wx > $MYPATH/transliterated_words_for_align

 cd $PHRASAL_PATH
 while read line
 do
	echo $line
	#----------- Rule Based Hindi Parser -------------------------
	cd $MYPATH/$line
	echo "(defglobal ?*hpath* = $rule_based_parser)" >> global_path.clp
	timeout 10 myclips -f  $rule_based_parser/intrachunker/run_chunk_modules.bat > $1.hnd.out
	timeout 10 myclips -f  $rule_based_parser/clp_files/get_scope.bat >> $1.hnd.out
	timeout 10 myclips -f  $rule_based_parser/clp_files/get_rels.bat >> $1.hnd.out
	if [ "$4" == "" ] ; then
    	   sed -i 's/rel_name-ids/relation_name-rel_ids/g' rel_info.dat
	   $HOME_anu_test/miscellaneous/SMT/dependency_alignment/mapping-hindi_rel-univ_rel.out < rel_info.dat > hindi_parser_rel_ids_tmp.dat
	fi
        #-------------------------------------------------------------
	cd $PHRASAL_PATH
	if [ "$3" == "general" ] ; then
		touch $MYPATH/$line/word-alignment-hi-en.dat
		touch $MYPATH/$line/word-alignment.dat
        	cd $HOME_anu_test/bin 
		timeout 500 sh run_alignment.sh $MYPATH/$line $1 $line $3
		cd $PHRASAL_PATH
	else	
	sh run_alignment.sh $MYPATH/$line $3
	sh run_alignment-hi-en.sh $MYPATH/$line $3
        cd $HOME_anu_test/bin 
	timeout 500 sh run_alignment.sh $MYPATH/$line $1 $line
	cd $PHRASAL_PATH
	fi
 done < $MYPATH/dir_names.txt

 cd $MYPATH
 sh $HOME_anu_test/miscellaneous/SMT/MINION/browser/run_align_browser_eng.sh $HOME_anu_test $1 $HOME_anu_tmp $HOME_anu_output

 sort -u  proper_noun_mngs_tmp.txt  > proper_noun_mngs.txt 
 sort -u  multi_proper_noun_mngs_tmp.txt  > multi_proper_noun_mngs.txt 
 sort -u  suggested_dic_mngs_tmp.txt > suggested_dic_mngs.txt
 sort -n -k2  align_percent_info.txt > align_percent.txt
 

# while read line
# do
#        grep "^$line    " $HOME_anu_test/Anu_data/compound-matching/multi_word_expressions.txt > k
#        grep "^$line    " $HOME_anu_test/Anu_data/compound-matching/named_entities.txt >> k
#        grep "^$line    " $HOME_anu_test/Anu_data/compound-matching/proper_noun-common_noun_compounds.txt >> k
#        grep "^$line    " $HOME_anu_test/Anu_data/compound-matching/acronyms-common_noun_compounds.txt >> k
#	 grep "^$line	" $HOME_anu_test/Anu_data/compound-matching/proper_noun_person_names.txt >> k
#        if  [ -s "k" ] ;
#        then
#                echo $line >> existing_multi_words.txt
#        else
#                echo $line >> multi_proper_nouns.txt
#        fi
# done < multi_proper_noun_mngs.txt
#
