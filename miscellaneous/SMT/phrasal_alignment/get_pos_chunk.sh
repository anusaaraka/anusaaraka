## Written by Roja(22-07-14)
## Getting POS and Chunking information from Hindi parser

#Getting POS
sed 's/^_//g' $1/hnd | sed 's/_$//g' | sed 's/_/ /g'  >  $1/hnd-wx
wx_utf8 < $1/hnd-wx > $1/hnd.utf8
cd $HOME_anu_test/miscellaneous/HINDI_POS_CHUNKER/POSTagger/
sh runTagger.sh $1/hnd.utf8 $1/hnd.tagger

#Getting Chunk
cd $HOME_anu_test/miscellaneous/HINDI_POS_CHUNKER/Chunker/
sh runChunker.sh $1/hnd.tagger $1/hnd.chunker

#Converting pos and chunk information to facts format
cd $1
cut -f1 hnd.tagger > f1 
cut -f2 hnd.tagger > f2 
$HOME_anu_test/miscellaneous/SHALLOW_PARSER/adding@-for-eng-words.out < f1 > f1-1
utf8_wx f1-1 > f1-2
paste f1-2 f2 > hnd.tagger.wx

cut -f1 hnd.chunker > f1
cut -f2 hnd.chunker > f2
$HOME_anu_test/miscellaneous/SHALLOW_PARSER/adding@-for-eng-words.out < f1 > f1-1
utf8_wx f1-1 > f1-2
paste f1-2 f2 > hnd.chunker.wx

python $HOME_anu_test/miscellaneous/SMT/phrasal_alignment/print-pos-info.py hnd.tagger.wx > pos.txt
python $HOME_anu_test/miscellaneous/SMT/phrasal_alignment/create-chunk-facts.py hnd.chunker.wx $1 
