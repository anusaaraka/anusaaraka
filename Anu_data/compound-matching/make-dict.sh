#export LC_ALL=C
#sort samAsa-new.txt > tmp
#perl MakeKey.pl < tmp >dict-final
#perl create_dbm.pl compound.gdbm < dict-final
#rm tmp dict-final

export LC_ALL=C
sort $HOME_anu_test/Anu_data/canonical_form_dictionary/dictionaries/Complete_sentence_in_canonical_form.txt > tmp1
perl MakeKey.pl < tmp1 > dict-final1
perl create_dbm.pl   Complete_sentence.gdbm < dict-final1
rm tmp1 dict-final1
