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
$HOME_anu_test/Anu_src/comp.sh $HOME_anu_test/miscellaneous/SMT/MINION/alignment/mapping-symbols_manual
$HOME_anu_test/Anu_src/comp.sh $HOME_anu_test/miscellaneous/SMT/MINION/alignment/adding@-for-eng-words
gcc -o $HOME_anu_test/miscellaneous/SMT/MINION/alignment/replace_wrd_with_id.out $HOME_anu_test/miscellaneous/SMT/MINION/alignment/replace_wrd_with_id.c

cd $HOME_anu_test/miscellaneous/SHALLOW_PARSER
 if  [ -e $HOME_anu_test/miscellaneous/SHALLOW_PARSER/shallow-parser-hin-3.0.fc8 ] ; then
     rm -rf shallow-parser-hin-3.0.fc8/
     rm -rf ~/sampark
 fi

 tar -xvzf shallow-parser-hin-3.0.fc8.tgz


 if  [ -e $HOME_anu_test/miscellaneous/SHALLOW_PARSER/fullparser-hin-1.6.3 ] ; then
     rm -rf fullparser-hin-1.6.3/
 fi

 tar -xvzf fullparser-hin-1.6.3.tgz
 
sh compile_shallow_parser.sh
sh compile_full_parser.sh
