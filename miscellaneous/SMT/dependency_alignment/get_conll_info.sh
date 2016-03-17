parser_path=$HOME/hindi-parsers/parsito

cd $1

python $HOME_anu_test/miscellaneous/SMT/dependency_alignment/group_hyphen_wrds.py  $2 > il_parser_grouped_out

utf8_wx il_parser_grouped_out > il_parser_grouped_wx_out

$HOME_anu_test/miscellaneous/SMT/dependency_alignment/mapping-hindi_rel-univ_rel.out < il_parser_grouped_wx_out > il_parser_mapped_rel.txt

python $HOME_anu_test/miscellaneous/SMT/dependency_alignment/get_hnd_relations.py il_parser_mapped_rel.txt hnd_parser_relns.txt

python $HOME_anu_test/miscellaneous/SMT/dependency_alignment/get_hnd_root_and_tam_info.py il_parser_grouped_wx_out hnd_root_and_tam_info.txt

# to generate parsito input
$HOME_anu_test/miscellaneous/SMT/dependency_alignment/mapping-hindi_pos-univ_pos.out < pos.txt  > dep_hin_pos.txt
awk '{print substr($0, 2, length($0) - 2)}' dep_hin_pos.txt > dep_hin_pos1.txt

python $HOME_anu_test/miscellaneous/SMT/dependency_alignment/extract_morph_info.py il_parser_grouped_out > dep_morph.txt

paste dep_hin_pos1.txt dep_morph.txt > dep_hin_pos2.txt

awk '{print $2,$3,"_",$4,$5,"_","_","_","_","_"}' dep_hin_pos2.txt > dep_parser_input_tmp

sed 's/ [ ]*/ /g' dep_parser_input_tmp | sed 's/ /\t/g'| sed 's/^\t//g' > dep_parser_input_tmp1

sed 's/^_.*//g' dep_parser_input_tmp1 > dep_parser_input.txt

# to get parsito output
cd $parser_path/parsito-1.1.0-bin/bin-linux64
./run_parsito $parser_path/ud-1.2-parsito-models-151120/parsito-hi-ud1.2-151120.model $1/dep_parser_input.txt > $1/dep_parser_out 

# to get UD relations
cd $1
python $HOME_anu_test/miscellaneous/SMT/dependency_alignment/get_hnd_relations.py dep_parser_out parsito_parser_relns.txt
