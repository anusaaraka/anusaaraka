#run : sh generate_hin_multi_word_dic.sh <input-file> <output-file>
cut -f1 $1 > eng
cut -f2 $1 > hnd
cut -d'#' -f1 hnd > hnd_new
paste hnd_new eng > $2
rm eng hnd hnd_new
