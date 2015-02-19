export scriptdir=$HOME_anu_test/Parsers/stanford-parser/stanford-parser-full-2014-08-27


java  -mx900m -cp "$scriptdir/*:" edu.stanford.nlp.parser.lexparser.LexicalizedParser -sentences "newline" -outputFormat oneline -outputFormatOptions "treeDependencies" -tagSeparator / -tokenizerOptions "americanize=false, escapeForwardSlashAsterisk=false" edu/stanford/nlp/models/lexparser/englishRNN.ser.gz $1
