cd $1
export scriptdir=`dirname $0`


java  -mx900m -cp "$scriptdir/stanford-parser.jar:" edu.stanford.nlp.trees.EnglishGrammaticalStructure -treeFile $2 -basic -collapsedTree -CCprocessed -keepPunct

#java  -mx500m -cp "$scriptdir/stanford-parser.jar:" edu.stanford.nlp.trees.EnglishGrammaticalStructure -treeFile $* -sentences "newline" -outputFormat wordsAndTags,typedDependencies -basic -collapsedTree -keepPunct $scriptdir/englishPCFG.ser.gz

#java  -mx500m -cp "$scriptdir/stanford-parser.jar:" edu.stanford.nlp.parser.lexparser.LexicalizedParser $* -outputFormat "wordsAndTags" 

