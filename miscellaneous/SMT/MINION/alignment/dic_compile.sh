MYPATH=$HOME_anu_test/miscellaneous/SMT/MINION/dictionaries
MYPATH1=$HOME_anu_test/Anu_data/canonical_form_dictionary/dictionaries
################################# Removing out files ################################################

cd $HOME_anu_test/miscellaneous/SMT/MINION/alignment
rm $HOME_anu_test/Anu_databases/phy_dictionary.gdbm
rm $HOME_anu_test/Anu_databases/provisional_*
rm $HOME_anu_test/Anu_databases/restricted_eng_words.gdbm
rm $HOME_anu_test/Anu_databases/restricted_hnd_words.gdbm
rm $HOME_anu_test/Anu_databases/hindi_tam_dictionary.gdbm
rm $HOME_anu_test/Anu_databases/hindi_wordnet_dic*.gdbm
rm $HOME_anu_test/Anu_databases/numbers_dic.gdbm
rm $HOME_anu_test/Anu_databases/preposition_dictionary.gdbm
rm $HOME_anu_test/Anu_databases/inferred_dic.gdbm
rm $HOME_anu_test/Anu_databases/Science-dictionary.gdbm
rm $HOME_anu_test/Anu_databases/preposition.gdbm
rm $HOME_anu_test/Anu_databases/adv_prep_dic.gdbm
rm $HOME_anu_test/Anu_databases/eng_*
rm $HOME_anu_test/Anu_databases/hnd_multi_*
rm $HOME_anu_test/Anu_databases/hnd_phy_multi_*
rm $HOME_anu_test/Anu_databases/default-iit-bombay-shabdanjali-dic*.gdbm

rm $MYPATH/eng_* $MYPATH/hnd_multi* $MYPATH/hnd_phy_multi*

cd  $HOME_anu_test/multifast-v1.0.0/src
rm -f get_word_count multi_word-dic.c  physics-dic.c  proper_noun-dic.c
make clean

################################# Compiling Source files ################################################

cd $HOME_anu_test/miscellaneous/SHALLOW_PARSER
 $HOME_anu_test/Anu_src/comp.sh adding@-for-eng-words
 
cd $HOME_anu_test/Anu_data/canonical_form_dictionary/
 flex canonical_form.lex
 gcc -o canonical_form.out lex.yy.c -lfl myeq.c
 $HOME_anu_test/Anu_src/comp.sh replacing_canonical
 $HOME_anu_test/Anu_src/comp.sh non_canonical_form

################################# Generating Canonical Form ################################################

 sh get_txt_files.sh
 sh get_dictionary_in_canonical_form.sh
 sh get_adv-prep_dic.sh

################################# Generating MWE Dictionaries ################################################

cd  $HOME_anu_test/multifast-v1.0.0/src
 sh run.sh
 make

cd $MYPATH
echo "Creating phy_hnd_multi_word_dic.txt"
 sh generate_multi_word_dic_for_alignment.sh $MYPATH1/phy_eng_multi_word_dic_in_canonical_form.txt phy_multi_word_dic.txt hindi
echo "Creating hindi_multi_word_dic.txt"
 sh generate_multi_word_dic_for_alignment.sh $MYPATH1/multi_word_expressions_in_canonical_form.txt multi_word_dic.txt hindi
 sh generate_multi_word_dic_for_alignment.sh $MYPATH1/multi_word_expressions_from_iit_bombay_in_canonical_form.txt multi_word_from_iit_bombay_dic.txt hindi
echo "Creating acronyms_multi.txt"
sh generate_multi_word_dic_for_alignment.sh $MYPATH1/acronyms-common_noun_compounds_in_canonical_form.txt acronyms_multi.txt 
echo "Creating named_entity_multi.txt"
sh generate_multi_word_dic_for_alignment.sh $MYPATH1/named_entities_in_canonical_form.txt named_entity_multi.txt 
echo "Creating proper_noun_multi.txt"
sh generate_multi_word_dic_for_alignment.sh $MYPATH1/proper_noun-common_noun_compounds_in_canonical_form.txt proper_noun_multi.txt

################################# Generating GDBM's #########################################################

cd $MYPATH1
 echo "Creating phy_dictionary.gdbm"
  ./create-gdbm.pl $HOME_anu_test/Anu_databases/phy_dictionary.gdbm         < phy_dictionary_in_canonical_form.txt
 echo "Creating provisional_PropN_dic.gdbm"
  ./create-gdbm.pl $HOME_anu_test/Anu_databases/provisional_PropN_dic.gdbm  < provisional_PropN_dic_in_canonical_form.txt
 echo "Creating provisional_word_dic.gdbm"
  ./create-gdbm.pl $HOME_anu_test/Anu_databases/provisional_word_dic.gdbm   < provisional_word_dic_in_canonical_form.txt
 echo "Creating provisional_root_dic.gdbm"
  ./create-gdbm.pl $HOME_anu_test/Anu_databases/provisional_root_dic.gdbm   < provisional_root_dic_in_canonical_form.txt
 echo "Creating provisional_multi_word_dic.gdbm"
  ./create-gdbm.pl $HOME_anu_test/Anu_databases/provisional_multi_word_dic.gdbm < provisional_multi_word_dic_in_canonical_form.txt
 echo "Creating Science-dictionary.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/Science-dictionary.gdbm      < Science-dictionary_in_canonical_form.txt
 echo "Creating hindi_tam_dictionary.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/hindi_tam_dictionary.gdbm    < hindi_tam_dictionary_in_canonical_form.txt
 echo "Creating preposition_dictionary.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/preposition_dictionary.gdbm  < preposition_dictionary_in_canonical_form.txt
 echo "Creating Hindi Wordnet dictionaries"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/hindi_wordnet_dic1.gdbm      < hindi_wordnet_dic1_in_canonical_form.txt
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/hindi_wordnet_dic2.gdbm      < hindi_wordnet_dic2_in_canonical_form.txt
 echo "Creating restricted_eng_words dictionary"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/restricted_eng_words.gdbm    < restricted_eng_words_in_canonical_form.txt
 echo "Creating restricted_hnd_words dictionary"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/restricted_hnd_words.gdbm    < restricted_hnd_words_in_canonical_form.txt
 echo "Creating numbers dictionary"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/numbers_dic.gdbm             < numbers_dic_in_canonical_form.txt
 echo "Creating inferred_dictionary"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/inferred_dic.gdbm            < inferred_dic_in_canonical_form.txt
 echo "Creating adv_prep_dictionary"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/adv_prep_dic.gdbm            < adv_prep_dic_in_canonical_form.txt
 
 echo "Creating phy_eng_multi_word_dic.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/eng_phy_multi_word_dic.gdbm < $MYPATH/eng_phy_multi_word_dic.txt
 echo "Creating phy_hnd_multi_word_dic.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/hnd_phy_multi_word_dic.gdbm < $MYPATH/hnd_phy_multi_word_dic.txt
 
 echo "Creating eng_multi_word_dic.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/eng_multi_word_dic.gdbm     < $MYPATH/eng_multi_word_dic.txt 
 echo "Creating hnd_multi_word_dic.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/hnd_multi_word_dic.gdbm     < $MYPATH/hnd_multi_word_dic.txt
 echo "Creating eng_multi_word_from_iit_bombay_dic.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/eng_multi_word_from_iit_bombay_dic.gdbm < $MYPATH/eng_multi_word_from_iit_bombay_dic.txt
 echo "Creating hnd_multi_word_from_iit_bombay_dic.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/hnd_multi_word_from_iit_bombay_dic.gdbm < $MYPATH/hnd_multi_word_from_iit_bombay_dic.txt
 echo "Creating eng_acronyms_multi.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/eng_acronyms_multi.gdbm < $MYPATH/eng_acronyms_multi.txt
echo "Creating eng_named_entity_multi.gdbm"
./create-gdbm.pl $HOME_anu_test/Anu_databases/eng_named_entity_multi.gdbm < $MYPATH/eng_named_entity_multi.txt
echo "Creating eng_proper_noun_multi.gdbm"
./create-gdbm.pl $HOME_anu_test/Anu_databases/eng_proper_noun_multi.gdbm < $MYPATH/eng_proper_noun_multi.txt

 echo "Creating default-iit-bombay-shabdanjali-dic.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/default-iit-bombay-shabdanjali-dic.gdbm < default-iit-bombay-shabdanjali-dic_in_canonical_form.txt
 echo "Creating preposition.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/preposition.gdbm < $HOME_anu_test/Anu_data/preposition.txt
 echo "Creating Phrv.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/Phrv.gdbm < Phrv_in_canonical_form.txt

 echo "Creating default-iit-bombay-shabdanjali-dic_smt.gdbm"
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
