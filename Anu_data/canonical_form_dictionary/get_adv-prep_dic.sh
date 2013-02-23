#Written by Roja (23-02-13)
#Extracting adverb and preposition entries from default-iit-bombay-shabdanjali-dic & preparing dictionary with a unique entry
#Ex:  to_adverb       hoSa_meM/banxa_avasWA_meM/banxa
#     to_preposition  ko/kI_aora/kI_ora/waka/kI/se/ke_mukAbale_meM/meM/se_milA_kara/ke_prawi
#			as
#     to	hoSa_meM/banxa_avasWA_meM/banxa/ko/kI_aora/kI_ora/waka/kI/se/ke_mukAbale_meM/meM/se_milA_kara/ke_prawi


MYPATH=`pwd`
cd $HOME_anu_test/miscellaneous/Programs/removed_files
rm converting-dic-to-smt_format.out
gcc -o converting-dic-to-smt_format.out converting-dic-to-smt_format.c

cd $MYPATH

grep "_adverb" dictionaries/default-iit-bombay-shabdanjali-dic_in_canonical_form.txt  > dictionaries/dic
grep "_preposition" dictionaries/default-iit-bombay-shabdanjali-dic_in_canonical_form.txt  >> dictionaries/dic

export LC_ALL=C
sort -u dictionaries/dic > dictionaries/dic_sort

$HOME_anu_test/miscellaneous/Programs/removed_files/converting-dic-to-smt_format.out dictionaries/dic_sort dictionaries/dic_adv_prep
python $HOME_anu_test/miscellaneous/SMT/MINION/alignment/remove_dup_entry.py  dictionaries/dic_adv_prep > dictionaries/adv_prep_dic_in_canonical_form.txt
