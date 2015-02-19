
export scriptdir=$HOME_anu_test/Parsers/stanford-parser/stanford-parser-full-2014-08-27

java  -mx900m -cp "$scriptdir/stanford-parser.jar:" edu.stanford.nlp.trees.EnglishGrammaticalStructure -treeFile $1 -basic -collapsedTree -CCprocessed -keepPunct

#java  -mx500m -cp "$scriptdir/stanford-parser.jar:" edu.stanford.nlp.trees.EnglishGrammaticalStructure -treeFile $* -sentences "newline" -outputFormat wordsAndTags,typedDependencies -basic -collapsedTree -keepPunct $scriptdir/englishPCFG.ser.gz

#java  -mx500m -cp "$scriptdir/stanford-parser.jar:" edu.stanford.nlp.parser.lexparser.LexicalizedParser $* -outputFormat "wordsAndTags" 

