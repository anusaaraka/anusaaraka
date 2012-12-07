 echo "Removing all gdbms"
 cd $HOME_anu_test/Anu_databases
 rm  *.gdbm 

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
 rm lex.yy.c y.tab.c  y.tab.h constituency_parse f_tid-rid.h
 

 cd $HOME_anu_test/apertium
 rm *.out
 rm *.bin

 echo "Removing CLIPS out files"
 cd $HOME_anu_test/CLIPS
 rm gdbm_lookup.h *.o

 cd $HOME_anu_test/bin
 rm myclips
 rm *.bin  wx2wx-normal.out wx2wx-small.out wx_utf8

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
 rm -r phrasal.Beta2 
 cd work
 rm path_for_transliteration phrasal-mert/phrasal.test.ini_tmp phrasal-mert/phrasal.test.ini_tmp1 phrasal-mert/phrasal.test.ini

 echo "Removing canonical files"
 cd $HOME_anu_test/Anu_data/canonical_form_dictionary/
 rm replacing_canonical.out get_canonical_form-dic.out canonical_form.out lex.yy.c
 rm -r dictionaries 

 cd $HOME_anu_test/WSD/wsd_rules/
 rm -r canonical_form_wsd_rules get_canonical_form_in_wsd.out lex.yy.c

 cd $HOME_anu_test/new_hnd_mo
 rm apertium_hn_in_canonical_form.dix

 cd $HOME_anu_test/miscellaneous/SMT/alignment/dictionaries
 rm phy_hnd_multi_word_dic.txt hindi_multi_word.txt
