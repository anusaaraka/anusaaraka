
 if ! [ -d $4/tmp/$1_tmp/$2 ] ; then
    echo "Sentence $2 does not exist in $1"
    exit
 fi

 MYPATH=$4/tmp

 cd $MYPATH/$1_tmp/$2
 echo "(defglobal ?*path* = $HOME_anu_test)" > global_path.clp
 echo "(defglobal ?*provisional_wsd_path* = $HOME_anu_provisional_wsd_rules)" >> global_path.clp
 echo "(Parser_used Link-Parser)" >> parser_type.dat

 myclips -f $HOME_anu_test/Anu_clp_files/run_modules_link.bat >  $1.error
 
 cd $HOME_anu_test/Anu_src/
 perl   FinalGenerate.pl $HOME_anu_test/bin/hi.gen.bin  $HOME_anu_test/Anu_databases/AllTam.gdbm  $MYPATH/ $1 $2 $HOME_anu_test/bin/hi.morf.bin < $MYPATH/$1_tmp/$2/id_Apertium_input.dat > $MYPATH/$1_tmp/$2/id_Apertium_output1.dat

sed -e 's/#//g' $MYPATH/$1_tmp/$2/id_Apertium_output1.dat > $MYPATH/$1_tmp/$2/id_Apertium_output.dat


cd $MYPATH/$1_tmp/$2
 myclips -f $HOME_anu_test/Anu_clp_files/run_H_gen_sen.bat >> $1.error
 
 cat  para_sent_id_info.dat original_word.dat word.dat punctuation_info.dat chunk.dat cat_consistency_check.dat padasuthra.dat root.dat  revised_preferred_morph.dat parserid_wordid_mapping.dat  link_word_cat.dat  link_numeric_word.dat link_name_expand.dat link_relation_info.dat lwg_info.dat relations.dat hindi_meanings.dat GNP_agmt_info.dat id_Apertium_output.dat  hindi_id_reorder.dat English_sentence.dat hindi_sentence.dat >>$MYPATH/$1_tmp/$2/all_facts

 cat linkage_count
 sed 's/(Eng_sen \"//g' English_sentence.dat |sed  's/\")//g'|sed 's/&quot;/\"/g'|sed 's/\&amp;/&/g'|sed 's/DOTDOTDOT/.../g'| sed 's/ABBRThatis/i.e./g' | sed 's/aABBRDOTABBRkABBRDOTABBRaABBRDOTABBR/a.k.a./g' | sed 's/eABBRDOTABBRgABBRDOTABBR/e.g./g'| sed 's/TWTWTWTW/_/g' | sed 's/TWTW/ /g'

 cp hindi_sentence.dat hindi_sentence_tmp.dat

 cat  hindi_sentence.dat | sed  's/right_paren,/)/g' | sed  's/)\./\./g'|sed  's/equal_to/=/g'|sed  's/left_paren/(/g'|sed  's/right_paren/)/g' |sed  's/\")//g'|sed 's/&quot;/\"/g'|sed 's/\&amp;/&/g'|sed 's/DOTDOTDOT/.../g'| sed 's/ABBRThatis/i.e./g' | sed 's/aABBRDOTABBRkABBRDOTABBRaABBRDOTABBR/a.k.a./g' | sed 's/eABBRDOTABBRgABBRDOTABBR/e.g./g'| sed 's/TWTWTWTW/_/g' | sed 's/TWTW/ /g' | sed -e 's/\\@//g'  >hindi_sentence1.dat


 cp hindi_sentence1.dat  hindi_sentence.dat

 cat  hindi_sentence.dat  

 grep -B2 "FALSE" $1.error >> errors.txt
 cat errors.txt


 #for sentence by sent analysis for web debugging tutorial
 cat English_sentence.dat >> $MYPATH/$1_tmp/sent-by-sent
 cat  hindi_sentence.dat | $HOME_anu_test/Anu_src/file-wx_utf8.out | sed -e '1,$s/\\@//g
 1,$s/#//g' >> $MYPATH/$1_tmp/sent-by-sent
 echo "" >> $MYPATH/$1_tmp/sent-by-sent

 myclips -f $HOME_anu_test/Anu_clp_files/user_wsd_info.clp > /dev/null
 mv user_wsd_info.dat $MYPATH/$1_$2_user_wsd_info.dat
 
