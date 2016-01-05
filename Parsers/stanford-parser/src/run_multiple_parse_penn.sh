
export scriptdir=$HOME_anu_test/Parsers/stanford-parser/stanford-parser-full-2015-12-09
java  -mx900m -cp "$scriptdir/*:" edu.stanford.nlp.parser.lexparser.LexicalizedParser -sentences "newline" -outputFormat oneline -outputFormatOptions "treeDependencies" -printPCFGkBest 1000 -tokenizerOptions "americanize=false, escapeForwardSlashAsterisk=false"  $scriptdir/edu/stanford/nlp/models/lexparser/englishPCFG.ser.gz $1

