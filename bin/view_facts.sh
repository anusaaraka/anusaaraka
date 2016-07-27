if [ "$1" == "-h" ]; then
	echo "	USAGE :: view_facts.sh  dictionary"	
	echo "			[OR]"  
	echo "	USAGE :: view_facts.sh  <file_name> <sen-no> [<fact_file_name>]"
	echo 
	echo "	fact_file_name :"
	echo "		root 		: Displays root information in facts format"
	echo "		category	: Displays category information in facts format"
	echo "		tam		: Displays tam information in facts format" 
	echo "		relations	: Displays parser or paninian relations based on user choice in facts format" 		
	echo "		ner		: Displays ner information in facts format"
	echo "		vibakthi	: Displays source of vibakthi "
	echo "		gender		: Displays gender information in facts format"
	echo "		number		: Displays number information in facts format"
	echo " 		gnp		: Displays gender,number, person, vibakthi, tam and case information of a pada in facts format"
	echo " 		parser_debug	: Dispalys parsers alignment in html file "
	echo
	echo " By default it dispalys all facts information  "
 	exit
else
   if [ "$1" == "dictionary" ]; then
	gedit $HOME_anu_test/Anu_data/default-iit-bombay-shabdanjali-dic.txt &
	exit
   else
	cd $HOME_anu_tmp/tmp/$1_tmp/$2
	if [ "$3" == "category" ]; then
		cat cat_consistency_check.dat
	elif [ "$3" == "root" ]; then
		cat root.dat
	elif [ "$3" == "tam" ]; then
		cat tam_id.dat
	elif [ "$3" == "ner" ]; then
		cat ner.dat
	elif [ "$3" == "gender" ]; then
		cat hindi_meanings.dat  gender.dat 
	elif [ "$3" == "vibakthi" ]; then
		cat vib_debug.dat
	elif [ "$3" == "relations" ]; then
		echo  " 1. Parser relations  "
		echo  " 2. Paninian relations  "
		echo -n	"Enter your choice (1 or 2) and press [ENTER]: "
		read number
		if [ $number == 1 ]; then
	       		cat sd-original-relations.dat
		else		
			echo
			sed '1,6d' $HOME_anu_tmp/tmp/$1_$2_user_wsd_info.dat | sed 's/(id-word-root-category\(.*\)//g' | sed 's/id, word\(.*\)//g' | sed 's/-----\(.*\)//g'| sed '/^$/d' > rel
			cat rel
		fi
	elif [ "$3" == "number" ]; then
		cat number.dat
	elif [ "$3" == "gnp" ]; then
		cat GNP_agmt_info.dat
	elif [ "$3" == "" ]; then  gedit all_facts &	
	elif [ "$3" == "parser_debug" ]; then
		cd $HOME_anu_test/miscellaneous/SMT/phrasal_alignment/align_debug
		sh dep_align_debug.sh $1 $2
	fi
   fi
fi

