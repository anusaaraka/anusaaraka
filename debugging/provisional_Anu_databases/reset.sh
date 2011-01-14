  export LC_ALL=C
  cd $HOME_anu_test/debugging/provisional_Anu_databases/

 ./create-gdbm.pl $HOME_anu_test/Anu_databases/default_meaning_frm_oldwsd.gdbm < $HOME_anu_test/Anu_data/default_meaning_frm_oldwsd.txt
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/female_list.gdbm < $HOME_anu_test/Anu_data/female_list.txt
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/male_list.gdbm < $HOME_anu_test/Anu_data/male_list.txt
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/Phrv.gdbm < $HOME_anu_test/Anu_data/Phrv.txt
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/animate_list.gdbm < $HOME_anu_test/Anu_data/animate_list.txt
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/kriyA_mUla-gender.gdbm < $HOME_anu_test/Anu_data/kriyA_mUla-gender.txt
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/not_ne_verb_list.gdbm < $HOME_anu_test/Anu_data/not_ne_verb_list.txt
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/hindi_cat.gdbm < $HOME_anu_test/Anu_data/hindi_cat.txt
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/uncountable.gdbm < $HOME_anu_test/Anu_data/uncountable.dat
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/inanimate.gdbm < $HOME_anu_test/Anu_data/inanimate.txt
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/animate.gdbm < $HOME_anu_test/Anu_data/animate.txt
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/AllTam.gdbm < $HOME_anu_test/Anu_data/AllTam.txt
 
 sort $HOME_anu_test/Anu_data/compound-matching/samAsa-new.txt > tmp
 perl $HOME_anu_test/Anu_data/compound-matching/MakeKey.pl < tmp >dict-final
 perl $HOME_anu_test/Anu_data/compound-matching/create_dbm.pl $HOME_anu_test/Anu_databases/compound.gdbm < dict-final
