 echo "#define ABS_ANU_PATH \"$HOME_anu_test/Anu_databases/\"" > $HOME_anu_test/CLIPS/gdbm_lookup.h
 echo "#define ABS_PATH \"$HOME_anu_tmp/tmp/\"" > $HOME_anu_test/Anu_src/f_tid-rid.h
 
 cd $HOME_anu_test/Anu_data
 echo "Creating paxasUwra.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/total-paxasUwra.gdbm < total-paxasUwra.txt 
 echo "Creating verbal_adj.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/verbal_adj.gdbm < verbal_adj.txt
 echo "Creating verbal_adj_tams.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/verbal_adj_tams.gdbm < verbal_adj_tams.txt
 echo "Creating default_meaning_frm_oldwsd.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/default_meaning_frm_oldwsd.gdbm < default_meaning_frm_oldwsd.txt
 echo "Creating hindi_default_tam.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/hindi_default_tam.gdbm < hindi_default_tam.txt
 echo "Creating causative_verb_mng.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/causative_verb_mng.gdbm < causative_verb_mng.txt
 echo "Creating female_list.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/female_list.gdbm < female_list.txt
 echo "Creating male_list.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/male_list.gdbm < male_list.txt
 echo "Creating PropN.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/PropN.gdbm < PropN.txt 
 echo "Creating Phrv.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/Phrv.gdbm < Phrv.txt
 echo "Creating animate_list.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/animate_list.gdbm < animate_list.txt
 echo "Creating adverb_list.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/adverbs_list.gdbm < adverbs_list.txt
 echo "Creating kriyA_mUla-gender.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/kriyA_mUla-gender.gdbm < kriyA_mUla-gender.txt
 echo "Creating not_ne_verb_list.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/not_ne_verb_list.gdbm < not_ne_verb_list.txt
 echo "Creating hindi_cat.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/hindi_cat.gdbm < hindi_cat.txt
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
 echo "Creating AllTam.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/AllTam.gdbm < AllTam.txt
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
 echo "Creating compound_phrase.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/compound_phrase.gdbm < compound-matching/compound_phrase.txt
 echo "Creating preposition.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/preposition.gdbm < preposition.txt
 echo "Creating default-iit-bombay-shabdanjali-dic.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/default-iit-bombay-shabdanjali-dic.gdbm < default-iit-bombay-shabdanjali-dic.txt

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
 ./comp.sh ra_d8_wp_r
 mv ra_d8_wp_r.out $HOME_anu_test/bin/roman_iscii
 gcc -o split_file.out   split_file.c 
 gcc -o chunker.out  chunker.c 
 ./comp.sh aper_chunker 
 ./comp.sh rm_tags
 ./compile_bison.sh
 ./comp.sh wx2wx-normal
 ./comp.sh wx2wx-small
 mv  wx2wx-normal.out  wx2wx-small.out $HOME_anu_test/bin/


 cd $HOME_anu_test/Anu_data
 echo "Creating default-iit-bombay-shabdanjali-dic_firefox.gdbm"
 cut -f1 default-iit-bombay-shabdanjali-dic.txt > word_field
 cut -f2 default-iit-bombay-shabdanjali-dic.txt > mng_field
 wx_utf8 mng_field > mng_utf8
 paste word_field mng_utf8 > default-iit-bombay-shabdanjali-dic_firefox_tmp.txt
 gcc -o $HOME_anu_test/Anu_src/converting-dic-format.out $HOME_anu_test/Anu_src/converting-dic-format.c 
 $HOME_anu_test/Anu_src/converting-dic-format.out default-iit-bombay-shabdanjali-dic_firefox_tmp.txt > default-iit-bombay-shabdanjali-dic_firefox.txt
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/default-iit-bombay-shabdanjali-dic_firefox.gdbm < default-iit-bombay-shabdanjali-dic_firefox.txt
 
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
 make
 mv myclips $HOME_anu_test/bin/.

 echo "Compiling Anusaraka Link Parser files"
 cd $HOME_anu_test/Parsers/LINK/link-grammar-4.5.7/
 ./configure
 make
 #cd $HOME_anu_test/Parsers/LINK/link-grammar-4.7.4/
 #./configure
 #make

 echo " Compiling Original Link Parser files"
 cd $HOME_anu_test/Anu
 tar -xzf link-grammar-4.5.7.tar.gz 
# tar -xzf link-grammar-4.7.4.tar.gz 
 cd $HOME_anu_test/Anu/link-grammar-4.5.7/
 ./configure
 make

# cd $HOME_anu_test/Anu/link-grammar-4.7.4/
# ./configure
# make

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
