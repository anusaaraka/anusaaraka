cd $1
export scriptdir=`dirname $0`

java  -mx900m -cp "$scriptdir/stanford-parser.jar:" edu.stanford.nlp.parser.lexparser.LexicalizedParser -sentences "newline" -outputFormat oneline -outputFormatOptions "treeDependencies" -printPCFGkBest 1000 -tokenizerOptions "americanize=false, escapeForwardSlashAsterisk=false"  $scriptdir/edu/stanford/nlp/models/lexparser/englishPCFG.ser.gz $2

