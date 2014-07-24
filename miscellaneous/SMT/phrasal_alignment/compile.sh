gcc -o gdbm-fetch.out gdbm-fetch.c -lgdbm
$HOME_anu_test/Anu_src/comp.sh replace-punctuation
$HOME_anu_test/Anu_src/comp.sh replace-mapping-symbols_for_align
$HOME_anu_test/Anu_data/create-gdbm.pl  en-hi-gdbm-dict.gdbm < en-hi-gdbm-dict.txt
$HOME_anu_test/Anu_src/comp.sh $HOME_anu_test/miscellaneous/SMT/MINION/alignment/morph
cd hi-en
$HOME_anu_test/Anu_data/create-gdbm.pl  Hin-Eng-dic.gdbm < Hin-Eng-dic.txt
$HOME_anu_test/Anu_data/create-gdbm.pl  Hin-Eng-dic-hi.gdbm < Hin-Eng-dic.txt-hi-en
cd $HOME_anu_test/multifast-v1.0.0/src/
make
