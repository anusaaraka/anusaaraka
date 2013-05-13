#run : sh generate_eng_hin_multi_word_dic_for_alignment.sh <input-file> <eng-output-file> <hnd-output-file>
cut -f1 $1 > eng
cut -f2 $1 > hnd
cut -d'#' -f1 hnd > hnd_new

#To get english multi word
paste eng hnd_new > eng_multi
export LC_ALL=C
sort -u  eng_multi > eng_multi1
$HOME_anu_test/Anu_src/converting-dic-to-alignment_format.out  eng_multi1  > eng_$2

#To get hindi multi word from english multi word
paste hnd_new eng > hnd_multi
$HOME_anu_test/Anu_src/split-mngs.out hnd_multi > hnd_multi1
export LC_ALL=C
sort -u hnd_multi1  > hnd_multi2
$HOME_anu_test/Anu_src/converting-dic-to-alignment_format.out  hnd_multi2  > hnd_$3
rm eng hnd hnd_new eng_multi eng_multi1 hnd_multi hnd_multi1 hnd_multi2
