#Get dictionary files 
cd $HOME_anu_test/Anu_data/canonical_form_dictionary/dictionaries/
cp *txt  $HOME_anu_test/debugging/provisional_Anu_databases/

cd $HOME_anu_test/Anu_data/ 
cp PropN.txt  adverbs_list.txt  uncountable.txt  inanimate.txt  animate.txt  plural_words.txt  ol_parser_unused_words.txt  place.txt  time.txt  eng-animate-list.txt  transitive-verb-list.txt  idioms.txt  preposition.txt  $HOME_anu_test/debugging/provisional_Anu_databases/

cd  $HOME_anu_test/debugging/provisional_Anu_databases/
export LC_ALL=C
sort Complete_sentence_in_canonical_form.txt > tmp1
perl $HOME_anu_test/Anu_data/compound-matching/MakeKey.pl < tmp1 > Complete_sentence_in_canonical_form.txt
rm tmp1

cp $HOME_anu_test/Anu_data/vb_root/ol_vb_root.txt .
