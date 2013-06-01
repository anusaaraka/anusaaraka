sh run_detokenizer.sh $1
sh post_proccessing_detokenize.sh $1_detokenized 
./checking-punctuation.out $1_detokenized-new   > $1_detokenized-new1
python make-first-letter-capital.py $1_detokenized-new1 $1_initial_cap
echo $1"_initial_cap is final file"
