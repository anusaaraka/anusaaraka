#To get Dictionaries in canonical form::
#Added by Roja(16-07-12)
###########################################
#Text which has left coloumn hindi
while read line
do
        cut -f1 $line".txt"  > $line".hindi"
        cut -f2 $line".txt"  > $line".eng"
	./get_canonical_form-dic.out  $line".hindi" > $line".canonical_form_tmp"
        ./canonical_form_correction.out  < $line".canonical_form_tmp" > $line".canonical_form_tmp1"
        ./canonical_to_conventional.out  < $line".canonical_form_tmp1" > $line".canonical_form"
	paste  $line".canonical_form" $line".eng" > dictionaries/$line"_in_canonical_form.txt"
	rm $line".txt" $line".hindi" $line".eng" $line".canonical_form" $line".canonical_form_tmp" $line".canonical_form_tmp1"
        echo "Generated $line"_in_canonical_form.txt"" 
done < list-left
###########################################
#Text which has right coloumn hindi
while read line
do
        cut -f1 $line".txt"  > $line".eng"
        cut -f2 $line".txt"  > $line".hindi"
	./get_canonical_form-dic.out  $line".hindi" > $line".canonical_form_tmp"
        ./canonical_form_correction.out  < $line".canonical_form_tmp" > $line".canonical_form_tmp1"
        ./canonical_to_conventional.out  < $line".canonical_form_tmp1" > $line".canonical_form"
        paste  $line".eng" $line".canonical_form"  > dictionaries/$line"_in_canonical_form.txt"
        rm $line".txt" $line".eng" $line".hindi" $line".canonical_form" $line".canonical_form_tmp" $line".canonical_form_tmp1"
        echo "Generated $line"_in_canonical_form.txt"" 
done < list-right
###########################################
#Text which has both sides hindi
while read line
do
	cut -f1 $line".txt"  > $line".hnd"
        cut -f2 $line".txt"  > $line".hindi"
        ./get_canonical_form-dic.out  $line".hnd"   > $line".hnd1.canonical_form_tmp"
        ./get_canonical_form-dic.out  $line".hindi" > $line".hnd2.canonical_form_tmp"
        ./canonical_form_correction.out  < $line".hnd1.canonical_form_tmp" > $line".hnd1.canonical_form_tmp1"
       ./canonical_to_conventional.out  < $line".hnd1.canonical_form_tmp1" > $line".hnd1.canonical_form"
        ./canonical_form_correction.out  < $line".hnd2.canonical_form_tmp" > $line".hnd2.canonical_form_tmp1"
        ./canonical_to_conventional.out  < $line".hnd2.canonical_form_tmp1" > $line".hnd2.canonical_form"
	paste $line".hnd1.canonical_form"  $line".hnd2.canonical_form" > dictionaries/$line"_in_canonical_form.txt"
	rm $line".txt" $line".hnd" $line".hindi" $line".hnd1.canonical_form" $line".hnd2.canonical_form" $line".hnd1.canonical_form_tmp" $line".hnd2.canonical_form_tmp" $line".hnd1.canonical_form_tmp1" $line".hnd2.canonical_form_tmp1"
	echo "Generated $line"_in_canonical_form.txt""
done < list-two-side-hindi
###########################################
#To get mixed domain dictionary
cd dictionaries
sed 's/$/_in_canonical_form.txt/g' ../list_Anu_data_domain > tmp
while read line 
do 
	cat $line >> mixed_domain_dic_in_canonical_form.tmp    
done < tmp
grep -v "^#"  mixed_domain_dic_in_canonical_form.tmp > mixed_domain_dic_in_canonical_form.tmp1
sort -u mixed_domain_dic_in_canonical_form.tmp1 > mixed_domain_dic_in_canonical_form.tmp2
python $HOME_anu_test/Anu_src/unique_entries.py mixed_domain_dic_in_canonical_form.tmp2 mixed_domain_dic_in_canonical_form.txt
rm mixed_domain_dic_in_canonical_form.tmp* tmp
echo "Generated mixed_domain_dic_in_canonical_form.txt"
###########################################
