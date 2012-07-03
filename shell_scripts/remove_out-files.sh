 echo "Removing all gdbms"
 cd $HOME_anu_test/Anu_databases
 rm  *.gdbm 

 cd $HOME_anu_test/Anu_data
 rm word_field mng_field mng_utf8 default-iit-bombay-shabdanjali-dic_firefox_tmp.txt default-iit-bombay-shabdanjali-dic_firefox.txt default-iit-bombay-shabdanjali-dic_smt_tmp.txt default-iit-bombay-shabdanjali-dic_smt.txt


 echo "Removing .bclp files"
 cd $HOME_anu_test/Anu_clp_files
 rm *.bclp

 echo "Cleaning link-parser "
 cd $HOME_anu_test/Parsers/LINK/link-grammar-4.5.7/
 make distclean

 echo "Removing link-parser"
 cd $HOME_anu_test/Anu
 rm -rf link-grammar-4.5.7

 echo "Removing stanford out files"
 cd $HOME_anu_test/Parsers/stanford-parser/stanford-parser-2010-11-30/
 rm *.out
 rm lex.yy.c

 echo "Removing RASP out files"
 cd $HOME_anu_test/Parsers/RASP/rasp3os/scripts/
 rm rasp_constituency_parse y.tab.c y.tab.h lex.yy.c

 echo "Removing .out files"
 cd $HOME_anu_test/Anu_src
 rm *.out
 rm lex.yy.c y.tab.c  y.tab.h jnk constituency_parse f_tid-rid.h
 

 cd $HOME_anu_test/apertium
 rm *.out
 rm *.bin

 echo "Removing CLIPS out files"
 cd $HOME_anu_test/CLIPS
 rm gdbm_lookup.h rm *.o

 cd $HOME_anu_test/bin
 rm myclips
 rm *.bin  wx2wx-normal.out wx2wx-small.out roman_iscii

 cd $HOME_anu_test/Anu/stdenglish
 make clean

 cd $HOME_anu_test/Anu/std_format
 make clean

 cd $HOME_anu_test/debugging/sentence_debug
 rm *.clp *.dat *.bat

 cd $HOME_anu_test/debugging/
 rm debug.mm y.* lex.yy.c constituency_parse

 rm $HOME_anu_test/new_hnd_mo/hi_expanded

 echo "Removing transliteration files"
 cd $HOME_anu_test/miscellaneous/transliteration/
 rm -r phrasal.Beta2 stanford-corenlp-2011-06-08
 cd work
 rm path_for_transliteration phrasal-mert/phrasal.test.ini_tmp phrasal-mert/phrasal.test.ini_tmp1 phrasal-mert/phrasal.test.ini

