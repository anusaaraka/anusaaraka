MYPATH=$HOME_anu_test/Anu_databases
cd $HOME_anu_test/debugging/provisional_Anu_databases

rm -rf Complete_sentence ol_vb_root
mv Complete_sentence* Complete_sentence
mv ol_vb_root.txt ol_vb_root

ls *txt > list1
sed 's/_in_canonical_form.txt//g' list1 | sed 's/\.txt//g' > list


while read line 
do

  if [ -s $line.txt ] ; then
	echo "Creating $line.gdbm" 
 	$HOME_anu_test/Anu_data/create-gdbm.pl $MYPATH/$line.gdbm < $line.txt
  elif [ -s $line"_in_canonical_form.txt" ] ; then 
	echo "Creating $line.gdbm" 
	 $HOME_anu_test/Anu_data/create-gdbm.pl $MYPATH/$line.gdbm < $line"_in_canonical_form.txt"
  fi

done < list

echo "Creating Complete_sentence.gdbm"
perl $HOME_anu_test/Anu_data/compound-matching/create_dbm.pl  $MYPATH/Complete_sentence.gdbm < Complete_sentence
echo "Creating ol_vb_root.gdbm"
perl $HOME_anu_test/Anu_data/compound-matching/create_dbm.pl  $MYPATH/ol_vb_root.gdbm < ol_vb_root
