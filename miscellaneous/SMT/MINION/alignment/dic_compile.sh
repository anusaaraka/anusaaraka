MYPATH=$HOME_anu_test/miscellaneous/SMT/MINION/dictionaries
MYPATH1=$HOME_anu_test/Anu_data/canonical_form_dictionary/dictionaries
################################# Removing out files ################################################

cd $HOME_anu_test/Anu_databases/
	rm *.gdbm
#cd $HOME_anu_test/miscellaneous/SMT/MINION/alignment
#rm $HOME_anu_test/Anu_databases/phy_dictionary.gdbm
#rm $HOME_anu_test/Anu_databases/provisional_*
#rm $HOME_anu_test/Anu_databases/restricted_eng_words.gdbm
#rm $HOME_anu_test/Anu_databases/restricted_hnd_words.gdbm
#rm $HOME_anu_test/Anu_databases/hindi_tam_dictionary.gdbm
#rm $HOME_anu_test/Anu_databases/hindi_wordnet_dic*.gdbm
#rm $HOME_anu_test/Anu_databases/numbers_dic.gdbm
#rm $HOME_anu_test/Anu_databases/preposition_dictionary.gdbm
#rm $HOME_anu_test/Anu_databases/inferred_dic.gdbm
#rm $HOME_anu_test/Anu_databases/Science-dictionary.gdbm
#rm $HOME_anu_test/Anu_databases/preposition.gdbm
#rm $HOME_anu_test/Anu_databases/adv_prep_dic.gdbm
#rm $HOME_anu_test/Anu_databases/eng_*
#rm $HOME_anu_test/Anu_databases/hnd_multi_*
#rm $HOME_anu_test/Anu_databases/hnd_phy_multi_*
#rm $HOME_anu_test/Anu_databases/default-iit-bombay-shabdanjali-dic*.gdbm

rm $MYPATH/eng_* $MYPATH/hnd_multi* $MYPATH/hnd_phy_multi*

cd  $HOME_anu_test/multifast-v1.4.2/src
rm -f get_word_count get_word_count_single.out multi_word-dic.c  physics_multi_dic.c  proper_noun-dic.c provisional_multi_dic.c agriculture_multi_dic.c
make clean

################################# Compiling Source files ################################################

cd $HOME_anu_test/miscellaneous/SHALLOW_PARSER
 $HOME_anu_test/Anu_src/comp.sh adding@-for-eng-words
 
cd $HOME_anu_test/Anu_data/canonical_form_dictionary/
 flex canonical_form.lex
 gcc -o canonical_form.out lex.yy.c -lfl myeq.c
 $HOME_anu_test/Anu_src/comp.sh canonical_form_correction
 $HOME_anu_test/Anu_src/comp.sh canonical_to_conventional
 $HOME_anu_test/Anu_src/comp.sh non_canonical_form

################################# Generating Canonical Form ################################################

 sh get_txt_files.sh
 sh get_dictionary_in_canonical_form.sh
 sh get_adv-prep_dic.sh

################################# Generating MWE Dictionaries ################################################

cd  $HOME_anu_test/multifast-v1.4.2/src
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
 echo "Creating physics_dic.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/physics_dic.gdbm < phy_dictionary_in_canonical_form.txt
 echo "Creating agriculture_dic.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/agriculture_dic.gdbm < agriculture_dic_in_canonical_form.txt
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
 echo "Creating proper_noun_dic.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/proper_noun_dic.gdbm < proper_noun_dic_in_canonical_form.txt

 echo "Creating paxasUwra.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/total-paxasUwra.gdbm < total-paxasUwra_in_canonical_form.txt
 echo "Creating verbal_adj.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/verbal_adj.gdbm < verbal_adj_in_canonical_form.txt
 echo "Creating verbal_adj_tams.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/verbal_adj_tams.gdbm < verbal_adj_tams_in_canonical_form.txt
 echo "Creating hindi_default_tam.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/hindi_default_tam.gdbm < hindi_default_tam_in_canonical_form.txt 
 echo "Creating causative_verb_mng.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/causative_verb_mng.gdbm < causative_verb_mng_in_canonical_form.txt
 echo "Creating female_list.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/female_list.gdbm < female_list_in_canonical_form.txt
 echo "Creating male_list.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/male_list.gdbm < male_list_in_canonical_form.txt
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
 echo "Creating kriyA_object_vib.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/kriyA_object_vib.gdbm < kriyA_object_vib_in_canonical_form.txt

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

 cd $HOME_anu_test/Anu_data/
 echo "Creating PropN.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/PropN.gdbm < PropN.txt
 echo "Creating adverb_list.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/adverbs_list.gdbm < adverbs_list.txt
 echo "Creating uncountable.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/uncountable.gdbm < uncountable.txt
 echo "Creating animate.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/animate.gdbm < animate.txt
 echo "Creating human.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/human.gdbm < human.txt
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
 echo "Creating transliterate_meaning.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/transliterate_meaning.gdbm < transliterate_meaning.txt

 cd $HOME_anu_test/Anu_data/compound-matching
 sh make-dict.sh
 mv Complete_sentence.gdbm $HOME_anu_test/Anu_databases/.
