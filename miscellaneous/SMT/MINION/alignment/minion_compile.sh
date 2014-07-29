cd $HOME_anu_test/Anu_src
gcc -o converting-dic-to-alignment_format.out converting-dic-to-alignment_format.c
gcc -o split-mngs.out split-mngs.c

cd $HOME_anu_test/miscellaneous/SMT/MINION/alignment
echo "Compiling DICTIONARIES......"
sh dic_compile.sh

echo "Compiling minion files"
gcc -o line_count.out line_count.c
$HOME_anu_test/Anu_src/comp.sh $HOME_anu_test/miscellaneous/SMT/MINION/alignment/morph
$HOME_anu_test/Anu_src/comp.sh $HOME_anu_test/miscellaneous/SMT/MINION/alignment/get_tam_info
$HOME_anu_test/Anu_src/comp.sh $HOME_anu_test/miscellaneous/SMT/MINION/alignment/get_tam_info_from_full_parser
gcc -o $HOME_anu_test/miscellaneous/SMT/MINION/alignment/replace_wrd_with_id.out $HOME_anu_test/miscellaneous/SMT/MINION/alignment/replace_wrd_with_id.c

#cd $HOME_anu_test/miscellaneous/SHALLOW_PARSER
# if  [ -e $HOME_anu_test/miscellaneous/SHALLOW_PARSER/shallow-parser-hin-4.0.fc8 ] ; then
#     rm -rf shallow-parser-hin-4.0.fc8
#     rm -rf ~/sampark
# fi
#
# tar -xvzf shallow-parser-hin-4.0.fc8.tar.gz
#
#sh compile_shallow_parser.sh
