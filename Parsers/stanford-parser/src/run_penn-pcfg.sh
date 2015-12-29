## On Chaitanya Sir suggestion renamed run_penn.sh as run_penn-pcfg.sh (Roja 05-01-11)

export scriptdir=$HOME_anu_test/Parsers/stanford-parser/stanford-parser-full-2015-12-09


java  -mx900m -cp "$scriptdir/*:" edu.stanford.nlp.parser.lexparser.LexicalizedParser -sentences "newline" -outputFormat oneline -outputFormatOptions "treeDependencies" -tagSeparator / -tokenizerOptions "americanize=false, escapeForwardSlashAsterisk=false" edu/stanford/nlp/models/lexparser/englishPCFG.ser.gz $1

#java  -mx900m -cp "$scriptdir/*:" edu.stanford.nlp.parser.lexparser.LexicalizedParser -sentences "newline" -outputFormat oneline -outputFormatOptions "treeDependencies" -tokenizerOptions americanize=false  edu/stanford/nlp/models/lexparser/englishPCFG.ser.gz  $*
