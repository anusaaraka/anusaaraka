
export scriptdir=$HOME_anu_test/Parsers/stanford-parser/stanford-parser-full-2014-08-27
#java  -mx500m -cp "$scriptdir/stanford-parser.jar:" edu.stanford.nlp.parser.lexparser.LexicalizedParser -sentences "newline" -outputFormat wordsAndTags,penn,typedDependencies -outputFormatOptions "basicDependencies, treeDependencies" $scriptdir/englishPCFG.ser.gz $*

#java  -mx500m -cp "$scriptdir/stanford-parser.jar:" edu.stanford.nlp.parser.lexparser.LexicalizedParser -sentences "newline" -outputFormat wordsAndTags,typedDependencies -outputFormatOptions "basicDependencies, CCPropagatedDependencies, treeDependencies" $scriptdir/englishPCFG.ser.gz $*

#java  -mx900m -cp "$scriptdir/stanford-parser.jar:" edu.stanford.nlp.parser.lexparser.LexicalizedParser -retainTmpSubcategories -sentences "newline" -outputFormat wordsAndTags,typedDependencies -outputFormatOptions "basicDependencies, CCPropagatedDependencies, treeDependencies" $scriptdir/englishPCFG.ser.gz $*

#java  -mx900m -cp "$scriptdir/stanford-parser.jar:" edu.stanford.nlp.parser.lexparser.LexicalizedParser -retainTmpSubcategories -sentences "newline" -outputFormat wordsAndTags,typedDependencies -printPCFGkBest 4 -outputFormatOptions "basicDependencies, CCPropagatedDependencies, treeDependencies" $scriptdir/englishPCFG.ser.gz $*



## below one is for constituents
#java  -mx500m -cp "$scriptdir/stanford-parser.jar:" edu.stanford.nlp.parser.lexparser.LexicalizedParser -sentences "newline" -outputFormat wordsAndTags,typedDependencies,penn -outputFormatOptions "lexicalize" $scriptdir/englishPCFG.ser.gz $*


##presently running below one
### americanize=false
java  -mx900m -cp "$scriptdir/stanford-parser.jar:" edu.stanford.nlp.parser.lexparser.LexicalizedParser -retainTmpSubcategories -sentences "newline" -outputFormat wordsAndTags,typedDependencies -outputFormatOptions "basicDependencies, CCPropagatedDependencies, treeDependencies"  -tokenizerOptions americanize=false $scriptdir/edu/stanford/nlp/models/lexparser/englishPCFG.ser.gz $1
