########################   To run all the trees #############################

 rm -f E_constituents_info.dat Node_category_info.dat cons_tree.dat $1.error $1_* 

 MYPATH=$HOME_anu_test/Parsers/stanford-parser/stanford-parser-full-2014-08-27

 java  -mx900m -cp "$MYPATH/*:" edu.stanford.nlp.parser.lexparser.LexicalizedParser -sentences "newline" -outputFormat oneline -outputFormatOptions "treeDependencies" -tokenizerOptions "americanize=false, escapeForwardSlashAsterisk=false"  edu/stanford/nlp/models/lexparser/englishPCFG.ser.gz  $*  > ~/$1_derived_tree  2> /dev/null
 
 java -mx800m -cp "$MYPATH/stanford-parser.jar:" edu.stanford.nlp.trees.EnglishGrammaticalStructure -treeFile ~/$1_derived_tree  -CCprocessed -conllx -keepPunct -lexicalize  > ~/$1_dependency_tree

 $HOME_anu_test/Parsers/stanford-parser/src/mapping-punctuations.out  < ~/$1_derived_tree >  ~/$1_derived_tree.cons

 java -mx900m -cp "$MYPATH/stanford-parser.jar:" edu.stanford.nlp.trees.TreePrint -options "lexicalize" ~/$1_derived_tree.cons > ~/$1_lexicalize_output

 $HOME_anu_test/Anu_src/constituency_parse E_constituents_info.dat Node_category_info.dat < ~/$1_lexicalize_output

 myclips -f get_constituency_tree.clp >  $1.error

 sed  's/LB /(/g' cons_tree.dat |sed 's/RB /)/g' |sed 's/(Cons-tree//g' |sed 's/RB)$/)/g'> ~/$1_derivation_tree

 java -jar ConstTreeViewer_13_05_10.jar & 

 java -jar DepTreeeViewer_17_06_10.jar
