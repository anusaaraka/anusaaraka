MYPATH=$HOME_anu_tmp

#apertium-deswxml $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt | lt-proc -a en.morf.bin| apertium-tagger -g en-ca.prob | apertium-rewxml   > $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt.tagger 

#for matching multiwords

#apertium-deswxml $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt | lt-proc -a en-multiword.morf.bin >$MYPATH/tmp/$1_tmp/tmp
#apertium-deswxml $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt | lt-proc -a en-multiword.morf.bin| apertium-tagger -g en-ca.prob | apertium-pretransfer >$MYPATH/tmp/$1_tmp/tmp1

#apertium-deswxml $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt | lt-proc -a en-multiword.morf.bin| apertium-tagger -g en-ca.prob | apertium-pretransfer | apertium-transfer en-hi.t1x en-hi-empty.t1x.bin en-hi-multiword.autobil.bin | apertium-rewxml  > $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt.multiword


#for normal chunking
#apertium-deswxml $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt | lt-proc -a en.morf.bin| apertium-tagger -g en-ca.prob | apertium-pretransfer | apertium-transfer en-hi.t1x en-hi.t1x.bin en-hi.autobil.bin | apertium-rewxml  > $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt.chunker

apertium-deswxml  $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt  | lt-proc -a en.morf.bin  | tee $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt.morph_tmp | apertium-tagger -g en-ca.prob | tee $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt.tagger_tmp | apertium-pretransfer | apertium-transfer en-hi.t1x en-hi.t1x.bin en-hi.autobil.bin | apertium-rewxml  > $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt.chunker


apertium-rewxml < $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt.tagger_tmp > $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt.tagger

#./tagger.out $MYPATH $1 <  $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt.tagger 
./tagger.out  < $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt.tagger $MYPATH/tmp/$1_tmp/one_sentence_per_line.txt.tagger.out  2&>/dev/null
 
