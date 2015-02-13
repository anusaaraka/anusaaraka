$HOME_anu_test/Anu_src/identify-nonascii-chars.out $2/tmp/$1_tmp/one_sentence_per_line.txt.std.penn_tmp1 $2/tmp/$1_tmp/one_sentence_per_line.txt.std.penn_tmp2
./handling_abbrevations.out  < $2/tmp/$1_tmp/one_sentence_per_line.txt.std.penn_tmp2 > $2/tmp/$1_tmp/one_sentence_per_line.txt.std.penn
./constituency_to_dependency.sh $2/tmp/$1_tmp/one_sentence_per_line.txt.std.penn >$2/tmp/$1_tmp/sd-relations_tmp.txt 
#./tsurgeon.sh -treeFile $2/tmp/$1_tmp/one_sentence_per_line.txt.std.penn tsurgeon-grammar > $2/tmp/$1_tmp/one_sentence_per_line.txt.std.tsurgeon
#sh run_lexicalize.sh $2/tmp/$1_tmp/one_sentence_per_line.txt.std.tsurgeon 1>$2/tmp/$1_tmp/sd-lexicalize_info_tmp.txt 2>/dev/null
./mapping-punctuations.out  < $2/tmp/$1_tmp/one_sentence_per_line.txt.std.penn > $2/tmp/$1_tmp/one_sentence_per_line.txt.std.cons
sh run_lexicalize.sh $2/tmp/$1_tmp/one_sentence_per_line.txt.std.cons 1>$2/tmp/$1_tmp/sd-lexicalize_info_tmp.txt 2>/dev/null
#sh run_lexicalize.sh $2/tmp/$1_tmp/one_sentence_per_line.txt.std.penn 1>$2/tmp/$1_tmp/sd-lexicalize_info_tmp.txt 2>/dev/null
sed -n -e "H;\${g;s/\n\n/\n;~~~~~~~~~~\n/g;p}" <$2/tmp/$1_tmp/sd-lexicalize_info_tmp.txt > $2/tmp/$1_tmp/sd-lexicalize_info.txt
python split-relations.py $2/tmp/$1_tmp/sd-relations_tmp.txt  $2/tmp/$1_tmp/sd-basic_relations_tmp.txt $2/tmp/$1_tmp/sd-propagation_relations_tmp.txt $2/tmp/$1_tmp/sd-tree_relations_tmp.txt 
./stnford_relations.out $2/tmp/$1_tmp/sd-tree_relation.txt rel_name-sids < $2/tmp/$1_tmp/sd-tree_relations_tmp.txt
./stnford_relations.out $2/tmp/$1_tmp/sd-basic_relation.txt basic_rel_name-sids < $2/tmp/$1_tmp/sd-basic_relations_tmp.txt
./stnford_relations.out $2/tmp/$1_tmp/sd-propagation_relations.txt propogation_rel_name-sids < $2/tmp/$1_tmp/sd-propagation_relations_tmp.txt
./get_word_cat.out < $2/tmp/$1_tmp/one_sentence_per_line.txt.std.cons $2/tmp/$1_tmp/sd_numeric_word.txt $2/tmp/$1_tmp/sd_category.txt $2/tmp/$1_tmp/sd_word.txt

 sed -n  "H;\${g;s/\n\n------------- basic dependencies ---------------/\n;~~~~~~~~~~\n------------- basic dependencies ---------------\n/g;p}" < $2/tmp/$1_tmp/sd-relations_tmp.txt > $2/tmp/$1_tmp/sd-original-relations.txt
