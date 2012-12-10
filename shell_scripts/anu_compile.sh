 echo "#define ABS_ANU_PATH \"$HOME_anu_test/Anu_databases/\"" > $HOME_anu_test/CLIPS/gdbm_lookup.h
 echo "#define ABS_PATH \"$HOME_anu_tmp/tmp/\"" > $HOME_anu_test/Anu_src/f_tid-rid.h

 echo "Creating phy_hnd_multi_word_dic.txt"
 cd $HOME_anu_test/miscellaneous/SMT/alignment/dictionaries
 sh generate_hin_multi_word_dic.sh phy_eng_multi_word_dic.txt phy_hnd_multi_word_dic.txt
 echo "Creating hindi_multi_word_dic.txt"
 sh generate_hin_multi_word_dic.sh $HOME_anu_test/Anu_data/compound-matching/multi_word_expressions.txt hindi_multi_word.txt

 cd $HOME_anu_test/Anu_data/canonical_form_dictionary/
 echo "Creating Canonical form dictionaries"
 sh get_txt_files.sh
 sh get_dictionary_in_canonical_form.sh
 flex canonical_form.lex
 gcc -o canonical_form.out lex.yy.c -lfl myeq.c
 $HOME_anu_test/Anu_src/comp.sh replacing_canonical

 echo "Creating Canonical form WSD rules"
 cd $HOME_anu_test/WSD/wsd_rules/
 ./compile.sh get_canonical_form_in_wsd $HOME_anu_test/Anu_data/canonical_form_dictionary/myeq.c
 sh get_canonical_form_wsd_rules.sh

 cd $HOME_anu_test/Anu_data/canonical_form_dictionary/dictionaries
 echo "Creating phy_dictionary.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/phy_dictionary.gdbm < $HOME_anu_test/Anu_data/canonical_form_dictionary/dictionaries/phy_dictionary_in_canonical_form.txt
 echo "Creating phy_eng_multi_word_dic.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/phy_eng_multi_word_dic.gdbm < $HOME_anu_test/Anu_data/canonical_form_dictionary/dictionaries/phy_eng_multi_word_dic_in_canonical_form.txt

 echo "Creating paxasUwra.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/total-paxasUwra.gdbm < total-paxasUwra_in_canonical_form.txt 
 echo "Creating verbal_adj.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/verbal_adj.gdbm < verbal_adj_in_canonical_form.txt
 echo "Creating verbal_adj_tams.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/verbal_adj_tams.gdbm < verbal_adj_tams_in_canonical_form.txt
 echo "Creating default_meaning_frm_oldwsd.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/default_meaning_frm_oldwsd.gdbm < default_meaning_frm_oldwsd_in_canonical_form.txt
 echo "Creating hindi_default_tam.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/hindi_default_tam.gdbm < hindi_default_tam_in_canonical_form.txt
 echo "Creating causative_verb_mng.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/causative_verb_mng.gdbm < causative_verb_mng_in_canonical_form.txt
 echo "Creating female_list.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/female_list.gdbm < female_list_in_canonical_form.txt
 echo "Creating male_list.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/male_list.gdbm < male_list_in_canonical_form.txt
 echo "Creating Phrv.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/Phrv.gdbm < Phrv_in_canonical_form.txt
 echo "Creating animate_list.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/animate_list.gdbm < animate_list_in_canonical_form.txt
 echo "Creating kriyA_mUla-gender.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/kriyA_mUla-gender.gdbm < kriyA_mUla-gender_in_canonical_form.txt
 echo "Creating not_ne_verb_list.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/not_ne_verb_list.gdbm < not_ne_verb_list_in_canonical_form.txt
 echo "Creating hindi_cat.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/hindi_cat.gdbm < hindi_cat_in_canonical_form.txt
 echo "Creating AllTam.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/AllTam.gdbm < AllTam_in_canonical_form.txt
 echo "Creating acronyms-common_noun_compounds.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/acronyms-common_noun_compounds.gdbm < acronyms-common_noun_compounds_in_canonical_form.txt
 echo "Creating proper_noun-common_noun_compounds.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/proper_noun-common_noun_compounds.gdbm < proper_noun-common_noun_compounds_in_canonical_form.txt
 echo "Creating named_entities.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/named_entities.gdbm < named_entities_in_canonical_form.txt
 echo "Creating multi_word_expressions.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/multi_word_expressions.gdbm < multi_word_expressions_in_canonical_form.txt
 echo "Creating default-iit-bombay-shabdanjali-dic.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/default-iit-bombay-shabdanjali-dic.gdbm < default-iit-bombay-shabdanjali-dic_in_canonical_form.txt
 echo "Creating kriyA_object_vib.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/kriyA_object_vib.gdbm < kriyA_object_vib_in_canonical_form.txt

 cd $HOME_anu_test/Anu_data
 echo "Creating PropN.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/PropN.gdbm < PropN.txt 
 echo "Creating adverb_list.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/adverbs_list.gdbm < adverbs_list.txt
 echo "Creating uncountable.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/uncountable.gdbm < uncountable.dat
 echo "Creating inanimate.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/inanimate.gdbm < inanimate.txt
 echo "Creating animate.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/animate.gdbm < animate.txt
 echo "Creating plural_words.gdbm "
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/plural_words.gdbm < plural_words.txt
 echo "Creating ol_parser_unused_words.gdbm "
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/ol_parser_unused_words.gdbm < ol_parser_unused_words.txt
 echo "Creating place.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/place.gdbm  < place.txt
 echo "Creating time.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/time.gdbm  < time.txt
 echo "Creating eng-animate-list.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/eng-animate-list.gdbm  < eng-animate-list.txt
 echo "Creating transitive-verb-list.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/transitive-verb-list.gdbm  < transitive-verb-list.txt
 echo "Creating idioms.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/idioms.gdbm < idioms.txt
 echo "Creating preposition.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/preposition.gdbm < preposition.txt

 cd vb_root
 echo "Creating ol_vb_root.gdbm"
 ./create_dbm.pl  $HOME_anu_test/Anu_databases/ol_vb_root.gdbm < openlogos_verb_root.txt

 cd $HOME_anu_test/Anu_data/compound-matching
 sh make-dict.sh
 mv Complete_sentence.gdbm $HOME_anu_test/Anu_databases/.

 echo "Compiling c and flex programs"
 cd $HOME_anu_test/Anu_src

 gcc -o word.out word.c
 gcc -o all_tran_pada.out -g f_tid-rid.c f_sen-range.c  ALL_TRAN_PADA.c
 gcc -o f_range.out f_range_wordarray_resarray.c
 flex ir.lex
 gcc -o ir lex.yy.c -lfl 
 mv ir $HOME_anu_test/bin/
 ./comp.sh wx_utf8 
 mv wx_utf8.out $HOME_anu_test/bin/wx_utf8
 gcc -o split_file.out   split_file.c 
 gcc -o chunker.out  chunker.c 
 ./comp.sh aper_chunker 
 ./comp.sh rm_tags
 ./compile_bison.sh
 ./comp.sh wx2wx-normal
 ./comp.sh wx2wx-small
 mv  wx2wx-normal.out  wx2wx-small.out $HOME_anu_test/bin/
 gcc -o replace_nonascii-chars.out replace_nonascii-chars.c
 gcc -o identify-nonascii-chars.out identify-nonascii-chars.c 

 cd $HOME_anu_test/Anu_data/canonical_form_dictionary/dictionaries
 echo "Creating default-iit-bombay-shabdanjali-dic_firefox.gdbm"
 cut -f1 default-iit-bombay-shabdanjali-dic_in_canonical_form.txt > word_field
 cut -f2 default-iit-bombay-shabdanjali-dic_in_canonical_form.txt > mng_field
 wx_utf8 < mng_field > mng_utf8
 paste word_field mng_utf8 > default-iit-bombay-shabdanjali-dic_firefox_tmp.txt
 gcc -o $HOME_anu_test/Anu_src/converting-dic-format.out $HOME_anu_test/Anu_src/converting-dic-format.c
 $HOME_anu_test/Anu_src/converting-dic-format.out default-iit-bombay-shabdanjali-dic_firefox_tmp.txt default-iit-bombay-shabdanjali-dic_firefox.txt default-iit-bombay-shabdanjali-dic_smt_tmp.txt
 utf8_wx default-iit-bombay-shabdanjali-dic_smt_tmp.txt > default-iit-bombay-shabdanjali-dic_smt.txt
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/default-iit-bombay-shabdanjali-dic_firefox.gdbm < default-iit-bombay-shabdanjali-dic_firefox.txt
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/default-iit-bombay-shabdanjali-dic_smt.gdbm < default-iit-bombay-shabdanjali-dic_smt.txt
 rm word_field mng_field mng_utf8 default-iit-bombay-shabdanjali-dic_firefox_tmp.txt default-iit-bombay-shabdanjali-dic_smt_tmp.txt 
 
 cd $HOME_anu_test/debugging
 sh compile_bison.sh

 echo "Compiling Anu stdenglish source files"
 cd $HOME_anu_test/Anu/stdenglish
 make all

 echo "Compiling Anu std_format source files"
 cd $HOME_anu_test/Anu/std_format
 make all

 echo "Compiling CLIPS source files"
 cd $HOME_anu_test/CLIPS
 sh compile.sh
 mv myclips $HOME_anu_test/bin/.

 echo "Compiling Anusaraka Link Parser files"
 cd $HOME_anu_test/Parsers/LINK/link-grammar-4.5.7/
 ./configure
 make

 echo " Compiling Original Link Parser files"
 cd $HOME_anu_test/Anu
 tar -xzf link-grammar-4.5.7.tar.gz 
 cd $HOME_anu_test/Anu/link-grammar-4.5.7/
 ./configure
 make

 echo "Compiling stanford parser files"
 cd $HOME_anu_test/Parsers/stanford-parser/stanford-parser-2010-11-30/
 sh compile.sh

 echo "Compiling RASP parser files"
 cd $HOME_anu_test/Parsers/RASP/rasp3os/scripts/
 sh comp.sh 

 echo "Creating binary files"
 cd $HOME_anu_test/Anu_clp_files
 myclips -f create_binary_files.clp  >/dev/null

 echo "Creating apertium hindi generation files"
 cd $HOME_anu_test/new_hnd_mo
 sh compile.sh
 mv hi.gen.bin $HOME_anu_test/bin/.
 mv hi.morf.bin $HOME_anu_test/bin/.

 echo "Creating apertium english generation files"
 cd $HOME_anu_test/apertium
 sh compile.sh

 cp $HOME_anu_test/debugging/sentence_debug.sh $HOME_anu_test/bin/.
 
 cd $HOME_anu_test/miscellaneous/std_tregex/
 tar -xvf stanford-tregex-2012-01-06.tgz 

 echo "Creating Transliteration files"
 cd  $HOME_anu_test/miscellaneous/transliteration/
 tar -xvzf phrasal.Beta2.tar.gz
 sed 's/JAVA_OPTS="-XX:+UseCompressedOops -Xmx$MEM -Xms$MEM"/JAVA_OPTS="-Xmx$MEM -Xms$MEM"/g' < phrasal.Beta2/scripts/decode > phrasal.Beta2/scripts/decode_tmp
 mv phrasal.Beta2/scripts/decode_tmp phrasal.Beta2/scripts/decode
 chmod +x phrasal.Beta2/scripts/decode
 chmod +x phrasal.Beta2/scripts/split-table
 echo "$HOME_anu_test/miscellaneous/transliteration/work/phrasal-mert/phrasal.final.binwts" > work/path_for_transliteration
 cp work/phrasal-mert/phrasal.final.ini work/phrasal-mert/phrasal.test.ini_tmp

 sed '$d' < work/phrasal-mert/phrasal.test.ini_tmp > work/phrasal-mert/phrasal.test.ini_tmp1
 cat work/phrasal-mert/phrasal.test.ini_tmp1 work/path_for_transliteration  > work/phrasal-mert/phrasal.test.ini

 echo "Copying Readme and shell file to Provisional directory"
 cd  $HOME_anu_test/Doc/Provisional_data
 cp  *    $HOME_anu_provisional_wsd_rules/
