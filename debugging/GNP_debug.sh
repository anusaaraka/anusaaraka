rm $HOME_anu_test/debugging/sentence_debug/*

 cp $HOME_anu_test/debugging/GNP_debug.clp $HOME_anu_test/debugging/run_GNP_debug.bat  $HOME_anu_test/debugging/sentence_debug/.

# cd $HOME_anu_tmp/tmp/$1_tmp/$2
 echo -e "word.dat\nEnglish_sentence.dat\nglobal_path.clp\nGNP_debug.dat\napertium_input_debug.dat\nid_Apertium_input.dat\nGNP_agmt_info.dat\nid_Apertium_output.dat\nglobal_path.clp" >> $HOME_anu_test/debugging/sentence_debug/dat

var=`cat $HOME_anu_test/debugging/sentence_debug/dat`
 for i in $var;
 do

   if [[ -a  $HOME_anu_tmp/tmp/$1_tmp/$2/$i ]] ; then

     cp $HOME_anu_tmp/tmp/$1_tmp/$2/$i  $HOME_anu_test/debugging/sentence_debug/.

     else
         echo "Creating $i"
           touch $HOME_anu_test/debugging/sentence_debug/$i
   fi
 done;

 echo "(defglobal ?*home_anu_tmp* = $HOME_anu_tmp/tmp/$1_$2_user_wsd_info.dat)" >>$HOME_anu_test/debugging/sentence_debug/global_path.clp
echo "(defglobal ?*file_name* = $1)" >>$HOME_anu_test/debugging/sentence_debug/global_path.clp
echo "(defglobal ?*sent_no* = $2)" >>$HOME_anu_test/debugging/sentence_debug/global_path.clp

