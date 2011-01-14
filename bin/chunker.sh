#INPUT FILE <FILE-NAME>
#OUTPUT FILE <FILE-NAME>.chunker

PATH1=$HOME_anu_test/Anu/chunker

java -Djava.ext.dirs="$PATH1/GROK/lib" opennlp.grok.preprocess.postag.EnglishPOSTaggerME -test  $1 $1.grok_pos_orig

java -Djava.ext.dirs="$PATH1/GROK/lib" opennlp.grok.preprocess.chunk.EnglishChunkerME -test  $1.grok_pos_orig $1.chunker 
