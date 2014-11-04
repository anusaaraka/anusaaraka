 echo "Removing all gdbms"
 cd $HOME_anu_test/Anu_databases
 rm  -f *.gdbm 

 echo "Removing .bclp files"
 cd $HOME_anu_test/Anu_clp_files
 rm -f *.bclp

 echo "Cleaning link-parser "
 cd $HOME_anu_test/Parsers/LINK/link-grammar-4.5.7/
 make distclean

 echo "Removing link-parser"
 cd $HOME_anu_test/Anu
 rm -rf link-grammar-4.5.7

 echo "Removing stanford out files"
 cd $HOME_anu_test/Parsers/stanford-parser/src
 rm -f *.out lex.yy.c

 echo "Removing RASP out files"
 cd $HOME_anu_test/Parsers/RASP/rasp3os/scripts/
 rm -f rasp_constituency_parse y.tab.c y.tab.h lex.yy.c

 echo "Removing .out files"
 cd $HOME_anu_test/Anu_src
 rm -f *.out
 rm -f lex.yy.c y.tab.c  y.tab.h constituency_parse f_tid-rid.h
 

 cd $HOME_anu_test/apertium
 rm -f *.out
 rm -f *.bin

 echo "Removing CLIPS out files"
 cd $HOME_anu_test/CLIPS
 rm -f gdbm_lookup.h wx_utf8.lex *.o

 cd $HOME_anu_test/bin
 rm -f myclips
 rm -f *.bin  wx2wx-normal.out wx2wx-small.out wx_utf8 ir ir_no@ run_tregex_for_multiparse.sh

 cd $HOME_anu_test/Anu/stdenglish
 make clean
 rm  abbrevations_using_NER.out 

 cd $HOME_anu_test/Anu/std_format
 make clean

 cd $HOME_anu_test/debugging/sentence_debug
 rm -f *.clp *.dat *.bat

 cd $HOME_anu_test/debugging/
 rm -f debug.mm y.* lex.yy.c constituency_parse

 rm -f $HOME_anu_test/new_hnd_mo/hi_expanded

 echo "Removing transliteration files"
 cd $HOME_anu_test/miscellaneous/transliteration/
 rm -rf phrasal.Beta2 
 cd work
 rm -f path_for_transliteration phrasal-mert/phrasal.test.ini_tmp* phrasal-mert/phrasal.test.ini 

 echo "Removing canonical files"
 cd $HOME_anu_test/Anu_data/canonical_form_dictionary/
 rm -f canonical_form_correction.out canonical_to_conventional.out get_canonical_form-dic.out canonical_form.out lex.yy.c non_canonical_form.out
 rm -rf dictionaries 

 cd $HOME_anu_test/WSD/wsd_rules/
 rm -rf canonical_form_wsd_rules get_canonical_form_in_wsd.out canonical_to_conventional_in_wsd.out lex.yy.c list

 cd $HOME_anu_test/new_hnd_mo
 rm -f apertium_hn_in_canonical_form.dix lex.yy.c

 cd $HOME_anu_test/miscellaneous/SMT/MINION/dictionaries
 rm -f phy_hnd_multi_word_dic.txt hindi_multi_word.txt eng_* hnd_multi* hnd_phy_multi*

 cd $HOME_anu_test/Parsers/
 rm -rf bllip-parser-master 

 echo "Removing Multifast out files"
 cd $HOME_anu_test/multifast-v1.0.0/ahocorasick/
 make clean

 cd $HOME_anu_test/multifast-v1.0.0/src/
 rm -f get_word_count multi_word-dic.c  physics-dic.c  proper_noun-dic.c provisional_multi_dic.c
 make clean 

 echo "Removing stanford-tregex"
 cd $HOME_anu_test/miscellaneous/std_tregex
 rm -rf stanford-tregex-2014-01-04

 echo "Removing SHALLOW_PARSER out files"
 cd $HOME_anu_test/miscellaneous/SHALLOW_PARSER
 rm -f adding@-for-eng-words.out lex.yy.c
