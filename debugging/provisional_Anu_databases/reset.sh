export LC_ALL=C
cd $HOME_anu_test/debugging/provisional_Anu_databases/

 cd $HOME_anu_test/Anu_data/canonical_form_dictionary/dictionaries
 echo "Creating phy_dictionary.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/phy_dictionary.gdbm < phy_dictionary_in_canonical_form.txt

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
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/uncountable.gdbm < uncountable.txt
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
 ./create_dbm.pl  $HOME_anu_test/Anu_databases/ol_vb_root.gdbm < ol_vb_root.txt 

 cd $HOME_anu_test/Anu_data/compound-matching
 sh make-dict.sh
 mv Complete_sentence.gdbm $HOME_anu_test/Anu_databases/.

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

