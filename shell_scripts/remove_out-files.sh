 echo "Removing all gdbms"
 cd $HOME_anu_test/Anu_databases
 rm  *.gdbm 

 echo "Removing .bclp files"
 cd $HOME_anu_test/Anu_clp_files
 rm *.bclp

 echo "Cleaning link-parser "
 cd $HOME_anu_test/Parsers/LINK/link-grammar-4.5.7/
 make distclean
 cd $HOME_anu_test/Parsers/LINK/link-grammar-4.7.4/
 make distclean

 echo "Removing link-parser"
 cd $HOME_anu_test/Anu
 rm -rf link-grammar-4.5.7
 rm -rf link-grammar-4.7.4

 echo "Removing stanford out files"
 cd $HOME_anu_test/Parsers/stanford-parser/stanford-parser-2010-11-30/
 rm *.out
 rm lex.yy.c

 echo "Removing .out files"
 cd $HOME_anu_test/Anu_src
 rm *.out
 rm ir

 cd $HOME_anu_test/apertium
 rm *.out
 rm *.bin

 echo "Removing CLIPS out files"
 cd $HOME_anu_test/CLIPS
 rm gdbm_lookup.h
 make clean

 cd $HOME_anu_test/bin
 rm myclips
 rm *.bin

 cd $HOME_anu_test/Anu/stdenglish
 make clean

 cd $HOME_anu_test/Anu/std_format
 make clean

 cd $HOME_anu_test/debugging/sentence_debug
 rm *.clp *.dat *.bat

 rm $HOME_anu_test/debugging/debug.mm
 rm $HOME_anu_test/new_hnd_mo/hi_expanded
