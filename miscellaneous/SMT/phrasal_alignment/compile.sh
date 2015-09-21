gcc -o gdbm-fetch.out gdbm-fetch.c -lgdbm
$HOME_anu_test/Anu_src/comp.sh replace-punctuation
$HOME_anu_test/Anu_data/create-gdbm.pl  en-hi-gdbm-dict_social_science.gdbm < en-hi-gdbm-dict_social_science.txt
#$HOME_anu_test/Anu_data/create-gdbm.pl  en-hi-gdbm-dict_physics.gdbm < en-hi-gdbm-dict_physics.txt
#$HOME_anu_test/Anu_data/create-gdbm.pl  en-hi-gdbm-dict_health.gdbm < en-hi-gdbm-dict_health.txt
#$HOME_anu_test/Anu_data/create-gdbm.pl  en-hi-gdbm-dict_tourism.gdbm < en-hi-gdbm-dict_tourism.txt
$HOME_anu_test/Anu_src/comp.sh $HOME_anu_test/miscellaneous/SMT/MINION/alignment/morph

sh get_rev_alltam.sh $HOME_anu_test/Anu_data/canonical_form_dictionary/dictionaries/AllTam_in_canonical_form.txt   $HOME_anu_test/Anu_data/canonical_form_dictionary/dictionaries/AllTam_rev_in_canonical_form.txt
$HOME_anu_test/Anu_data/create-gdbm.pl  $HOME_anu_test/Anu_databases/AllTam_rev.gdbm < $HOME_anu_test/Anu_data/canonical_form_dictionary/dictionaries/AllTam_rev_in_canonical_form.txt

cd hi-en
$HOME_anu_test/Anu_data/create-gdbm.pl  Hin-Eng-dic_social_science.gdbm < Hin-Eng-dic_social_science.txt
#$HOME_anu_test/Anu_data/create-gdbm.pl  Hin-Eng-dic_physics.gdbm < Hin-Eng-dic_physics.txt
#$HOME_anu_test/Anu_data/create-gdbm.pl  Hin-Eng-dic_tourism.gdbm < Hin-Eng-dic_tourism.txt
#$HOME_anu_test/Anu_data/create-gdbm.pl  Hin-Eng-dic-hi.gdbm < Hin-Eng-dic.txt-hi-en

echo "Compiling phrasal_mwe"
cd $HOME_anu_test/multifast-v1.4.2/src/phrasal_mwe
make
