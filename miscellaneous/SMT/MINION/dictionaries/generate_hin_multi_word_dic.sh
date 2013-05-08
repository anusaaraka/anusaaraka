#run : sh generate_hin_multi_word_dic.sh <input-file> <output-file>
cut -f1 $1 > eng
cut -f2 $1 > hnd
cut -d'#' -f1 hnd > hnd_new
paste hnd_new eng > hnd_multi
$HOME_anu_test/Anu_src/split-mngs.out hnd_multi > hnd_multi1
export LC_ALL=C
sort -u hnd_multi1  > hnd_multi2
$HOME_anu_test/Anu_src/converting-dic-to-alignment_format.out  hnd_multi2  > $2
rm eng hnd hnd_new hnd_multi hnd_multi1 hnd_multi2
