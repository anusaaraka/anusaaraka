
cd $HOME_anu_test/miscellaneous/SMT/MINION/alignment
echo "Compiling DICTIONARIES......"
sh dic_compile.sh

echo "Compiling minion files"
gcc -o line_count.out line_count.c
$HOME_anu_test/Anu_src/comp.sh $HOME_anu_test/miscellaneous/SMT/MINION/alignment/morph
$HOME_anu_test/Anu_src/comp.sh $HOME_anu_test/miscellaneous/SMT/MINION/alignment/get_tam_info
$HOME_anu_test/Anu_src/comp.sh $HOME_anu_test/miscellaneous/SMT/MINION/alignment/mapping-symbols_manual
$HOME_anu_test/Anu_src/comp.sh $HOME_anu_test/miscellaneous/SMT/MINION/alignment/adding@-for-eng-words
gcc -o $HOME_anu_test/miscellaneous/SMT/MINION/alignment/replace_wrd_with_id.out $HOME_anu_test/miscellaneous/SMT/MINION/alignment/replace_wrd_with_id.c

cd $HOME_anu_test/miscellaneous/SHALLOW_PARSER
sh compile_shallow_parser.sh
