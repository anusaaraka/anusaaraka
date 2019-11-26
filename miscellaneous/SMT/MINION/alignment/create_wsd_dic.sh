#Creating wsd dictionary:
#Written by Roja(21-10-19)
##############################################################
Mypath=`pwd`
prov_path=$HOME_anu_provisional_wsd_rules
anu_path=$HOME_anu_test/WSD/wsd_rules

rm -f wsd_dictionary.txt

cd $prov_path
ls *.clp > $Mypath/l

cd $anu_path
ls *.clp >> $Mypath/l

cd $Mypath
sort -u l > l1
grep -v "check_error.clp" l1 > l2
grep -v ".*_tam.clp" l2 > list
sed -i 's/.clp//g' list


while read line 
do
	if [ -e $prov_path/$line.clp ] ; then 
		python3 create_wsd_dic.py  $prov_path/$line >> wsd_dictionary.txt
	elif [ -e $anu_path/$line.clp ] ; then
		python3 create_wsd_dic.py  $anu_path/$line >> wsd_dictionary.txt
	fi


done < list 	


rm -f l l1 l2 list
