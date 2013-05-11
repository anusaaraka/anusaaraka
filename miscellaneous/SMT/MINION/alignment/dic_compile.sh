cd $HOME_anu_test/miscellaneous/SMT/MINION/alignment
rm $HOME_anu_test/Anu_databases/phy_dictionary.gdbm
rm $HOME_anu_test/Anu_databases/phy_eng_multi_word_dic.gdbm
rm $HOME_anu_test/Anu_databases/phy_hnd_multi_word_dic.gdbm

rm $HOME_anu_test/Anu_databases/provisional_PropN_dic.gdbm
rm $HOME_anu_test/Anu_databases/provisional_word_dic.gdbm
rm $HOME_anu_test/Anu_databases/provisional_root_dic.gdbm
rm $HOME_anu_test/Anu_databases/provisional_multi_word_dic.gdbm

rm $HOME_anu_test/Anu_databases/restricted_eng_words.gdbm
rm $HOME_anu_test/Anu_databases/restricted_hnd_words.gdbm

rm $HOME_anu_test/Anu_databases/hindi_tam_dictionary.gdbm
rm $HOME_anu_test/Anu_databases/hindi_wordnet_dic1.gdbm
rm $HOME_anu_test/Anu_databases/hindi_wordnet_dic2.gdbm
rm $HOME_anu_test/Anu_databases/hindi_multi_word.gdbm
rm $HOME_anu_test/Anu_databases/numbers_dic.gdbm
rm $HOME_anu_test/Anu_databases/preposition_dictionary.gdbm
rm $HOME_anu_test/Anu_databases/inferred_dic.gdbm

rm $HOME_anu_test/Anu_databases/Science-dictionary.gdbm

rm $HOME_anu_test/Anu_databases/default-iit-bombay-shabdanjali-dic.gdbm
rm $HOME_anu_test/Anu_databases/multi_word_expressions.gdbm
rm $HOME_anu_test/Anu_databases/preposition.gdbm

rm $HOME_anu_test/miscellaneous/SMT/MINION/dictionaries/phy_hnd_multi_word_dic.txt
rm $HOME_anu_test/miscellaneous/SMT/MINION/dictionaries/hindi_multi_word.txt

rm $HOME_anu_test/Anu_databases/default-iit-bombay-shabdanjali-dic_smt.gdbm
rm $HOME_anu_test/Anu_databases/default-iit-bombay-shabdanjali-dic_firefox.gdbm
rm $HOME_anu_test/Anu_databases/adv_prep_dic.gdbm
rm $HOME_anu_test/Anu_databases/multi_word_expression_for-iit-bombay.gdbm

cd  $HOME_anu_test/multifast-v1.0.0/src
rm -f get_word_count multi_word-dic.c  physics-dic.c  proper_noun-dic.c
make clean

echo "Creating phy_hnd_multi_word_dic.txt"
cd $HOME_anu_test/miscellaneous/SMT/MINION/dictionaries
sh generate_hin_multi_word_dic.sh phy_eng_multi_word_dic.txt phy_hnd_multi_word_dic.txt
echo "Creating hindi_multi_word_dic.txt"
sh generate_hin_multi_word_dic.sh $HOME_anu_test/Anu_data/compound-matching/multi_word_expressions.txt hindi_multi_word.txt 

cd $HOME_anu_test/miscellaneous/SHALLOW_PARSER
$HOME_anu_test/Anu_src/comp.sh adding@-for-eng-words
 
cd $HOME_anu_test/Anu_data/canonical_form_dictionary/
flex canonical_form.lex
gcc -o canonical_form.out lex.yy.c -lfl myeq.c
$HOME_anu_test/Anu_src/comp.sh replacing_canonical
$HOME_anu_test/Anu_src/comp.sh non_canonical_form

sh get_txt_files.sh
sh get_dictionary_in_canonical_form.sh
sh get_adv-prep_dic.sh

cd  $HOME_anu_test/multifast-v1.0.0/src
 sh run.sh
 make


cd $HOME_anu_test/Anu_data/canonical_form_dictionary/dictionaries/
echo "Creating phy_dictionary.txt"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/phy_dictionary.gdbm         < phy_dictionary_in_canonical_form.txt
echo "Creating phy_eng_multi_word_dic.txt"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/phy_eng_multi_word_dic.gdbm < phy_eng_multi_word_dic_in_canonical_form.txt
echo "Creating phy_hnd_multi_word_dic.txt"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/phy_hnd_multi_word_dic.gdbm < phy_hnd_multi_word_dic_in_canonical_form.txt
echo "Creating provisional_PropN_dictionary"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/provisional_PropN_dic.gdbm  < provisional_PropN_dic_in_canonical_form.txt
echo "Creating provisional_word_dictionary"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/provisional_word_dic.gdbm   < provisional_word_dic_in_canonical_form.txt
echo "Creating provisional_root_dictionary"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/provisional_root_dic.gdbm   < provisional_root_dic_in_canonical_form.txt
echo "Creating provisional_multi_word_dictionary"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/provisional_multi_word_dic.gdbm < provisional_multi_word_dic_in_canonical_form.txt
echo "Creating Science-dictionary"
./create-gdbm.pl $HOME_anu_test/Anu_databases/Science-dictionary.gdbm      < Science-dictionary_in_canonical_form.txt
echo "Creating hindi_tam_dictionary"
./create-gdbm.pl $HOME_anu_test/Anu_databases/hindi_tam_dictionary.gdbm    < hindi_tam_dictionary_in_canonical_form.txt
echo "Creating preposition_dictionary"
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
echo "Creating hindi_multi_word dictionary"
./create-gdbm.pl $HOME_anu_test/Anu_databases/hindi_multi_word.gdbm        < hindi_multi_word_in_canonical_form.txt
echo "Creating inferred_dictionary"
./create-gdbm.pl $HOME_anu_test/Anu_databases/inferred_dic.gdbm            < inferred_dic_in_canonical_form.txt
echo "Creating adv_prep_dictionary"
./create-gdbm.pl $HOME_anu_test/Anu_databases/adv_prep_dic.gdbm            < adv_prep_dic_in_canonical_form.txt

 echo "Creating multi_word_expressions.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/multi_word_expressions.gdbm < multi_word_expressions_in_canonical_form.txt
 echo "Creating default-iit-bombay-shabdanjali-dic.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/default-iit-bombay-shabdanjali-dic.gdbm < default-iit-bombay-shabdanjali-dic_in_canonical_form.txt
 echo "Creating preposition.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/preposition.gdbm < $HOME_anu_test/Anu_data/preposition.txt
 echo "Creating multi_word_expression_from_iit_bombay.gdbm"
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/eng_multi_word_expressions_from_iit_bombay.gdbm < $HOME_anu_test/miscellaneous/SMT/MINION/dictionaries/eng_multi_word_expressions_from_iit_bombay.txt

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
