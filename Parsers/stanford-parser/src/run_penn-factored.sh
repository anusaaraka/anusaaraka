## Created this file separately on Chaitanya Sir suggestion. 
## Passing grammar file as an argument consumes more time while compared to passing in the file itself.(Added by Roja 5-1-12)

cd $1
export scriptdir=`dirname $0`


java  -mx900m -cp "$scriptdir/*:" edu.stanford.nlp.parser.lexparser.LexicalizedParser -sentences "newline" -outputFormat oneline -outputFormatOptions "treeDependencies" -tagSeparator / -tokenizerOptions "americanize=false, escapeForwardSlashAsterisk=false" edu/stanford/nlp/models/lexparser/englishFactored.ser.gz $2
