export PHRASAL=$HOME_anu_test/miscellaneous/transliteration/phrasal.Beta2
export CORENLP=$HOME_anu_test/miscellaneous/transliteration/stanford-corenlp-2011-06-08
. $PHRASAL/scripts/setupenv.sh

#rm -rf $HOME_anu_test/miscellaneous/transliteration/work/testmodels
#mkdir $HOME_anu_test/miscellaneous/transliteration/work/testmodels

python $HOME_anu_test/miscellaneous/transliteration/work/split-char.py $1/$2 > $1/$2_tmp-clean-word

#echo "running extract phrases"
#time $HOME_anu_test/miscellaneous/transliteration/phrasal.Beta2/scripts/extract-phrases 1g $HOME_anu_test/miscellaneous/transliteration/work/models $HOME_anu_test/miscellaneous/transliteration/work/testmodels -fFilterCorpus $1/$2_tmp-clean-word

time $HOME_anu_test/miscellaneous/transliteration/phrasal.Beta2/scripts/decode 1g $HOME_anu_test/miscellaneous/transliteration/work/phrasal-mert/phrasal.test.ini < $1/$2_tmp-clean-word > $1/$2_intermediate_out

sed 's/ //g' <  $1/$2_intermediate_out > $1/$2.wx
