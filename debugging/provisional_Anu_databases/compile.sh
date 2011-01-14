  export LC_ALL=C
  cd $HOME_anu_test/debugging/provisional_Anu_databases

 ./create-gdbm.pl $HOME_anu_test/Anu_databases/default_meaning_frm_oldwsd.gdbm < default_meaning_frm_oldwsd.txt
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/female_list.gdbm < female_list.txt
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/male_list.gdbm < male_list.txt
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/Phrv.gdbm < Phrv.txt
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/animate_list.gdbm < animate_list.txt
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/kriyA_mUla-gender.gdbm < kriyA_mUla-gender.txt
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/not_ne_verb_list.gdbm < not_ne_verb_list.txt
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/hindi_cat.gdbm < hindi_cat.txt
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/uncountable.gdbm < uncountable.dat
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/inanimate.gdbm < inanimate.txt
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/animate.gdbm < animate.txt
 ./create-gdbm.pl $HOME_anu_test/Anu_databases/AllTam.gdbm < AllTam.txt
 
 sort samAsa-new.txt > tmp
 perl $HOME_anu_test/Anu_data/compound-matching/MakeKey.pl < tmp >dict-final
 perl $HOME_anu_test/Anu_data/compound-matching/create_dbm.pl $HOME_anu_test/Anu_databases/compound.gdbm < dict-final
