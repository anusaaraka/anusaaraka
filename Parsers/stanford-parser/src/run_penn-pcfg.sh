## On Chaitanya Sir suggestion renamed run_penn.sh as run_penn-pcfg.sh (Roja 05-01-11)

cd $1
export scriptdir=`dirname $0`


java  -mx900m -cp "$scriptdir/*:" edu.stanford.nlp.parser.lexparser.LexicalizedParser -sentences "newline" -outputFormat oneline -outputFormatOptions "treeDependencies" -tagSeparator / -tokenizerOptions "americanize=false, escapeForwardSlashAsterisk=false" edu/stanford/nlp/models/lexparser/englishPCFG.ser.gz $2

#java  -mx900m -cp "$scriptdir/*:" edu.stanford.nlp.parser.lexparser.LexicalizedParser -sentences "newline" -outputFormat oneline -outputFormatOptions "treeDependencies" -tokenizerOptions americanize=false  edu/stanford/nlp/models/lexparser/englishPCFG.ser.gz  $*
