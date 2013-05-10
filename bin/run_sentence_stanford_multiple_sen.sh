 MYPATH=$HOME_anu_tmp/tmp

 echo "GNP of a word ---"
 cd $HOME_anu_test/Anu_src/
 time perl  FinalGenerate.pl $HOME_anu_test/bin/hi.gen.bin  $HOME_anu_test/Anu_databases/AllTam.gdbm  $MYPATH/ $1 $2 $HOME_anu_test/bin/hi.morf.bin < $MYPATH/$1_tmp/$2/id_Apertium_input.dat > $MYPATH/$1_tmp/$2/id_Apertium_output1.dat

 echo "Adding @---"
 cd $MYPATH/$1_tmp/$2
 time python $HOME_anu_test/Anu_src/add-@_in-hindi_sentence.py  id_Apertium_output1.dat id_Apertium_output2.dat
 sed -e 's/#//g' $MYPATH/$1_tmp/$2/id_Apertium_output2.dat > $MYPATH/$1_tmp/$2/id_Apertium_output.dat

 echo "Prepare minion input ---"
 time myclips -f $HOME_anu_test/Anu_clp_files/prepare_minion_for_multiple_sen.bat >> $1.error
 
 rm multiple_sentences.dat

 echo "Minion time ---"
 #=================multiple_sen============================
 time  sh $HOME_anu_test/Anu_clp_files/run_minion.sh
 #=========================================================
 sh $HOME_anu_test/bin/abbr.sh

 cat  multiple_sentences.dat
