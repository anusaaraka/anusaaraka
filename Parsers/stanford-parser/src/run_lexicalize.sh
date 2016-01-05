
export scriptdir=$HOME_anu_test/Parsers/stanford-parser/stanford-parser-full-2015-12-09


java  -mx900m -cp "$scriptdir/*:" edu.stanford.nlp.trees.TreePrint -options "lexicalize" $1
