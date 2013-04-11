; Below are the removed modules

 ;----------------------------------------------------------------------
 ; hindi_rev_order.dat file is generated in H_ordering_rules.clp ( uncomment save-facts in undefrules rule)
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/get_constituency_tree.bclp"))
 (bload ?*path*)
 (load-facts "hindi_rev_order.dat")
 (assert (daughter ROOT1))
 (assert (Cons-tree))
 (run)
 (save-facts "rev_constituency_tree.dat" local Cons-tree)
 (clear)

 also add below steps in run_sentence_stanford.sh 

 sed  's/LB /(/g' $MYPATH/$1_tmp/$2/rev_constituency_tree.dat |sed 's/RB /)/g' |sed 's/RB)$/))/g'> $MYPATH/$1_tmp/$2/rev_constituency_tree1.dat
 cat $MYPATH/$1_tmp/$2/rev_constituency_tree1.dat >>$MYPATH/$1_tmp/rev_constituency_tree2.dat
 ;----------------------------------------------------------------------
 (load "global_path.clp")
 (bind ?*path* (str-cat ?*path* "/Anu_clp_files/get_all_possible_roots.clp"))
 (load ?*path*)
 (load-facts "morph.dat")
 (load-facts "revised_root.dat")
 (load-facts "original_word.dat")
 (open "get_all_roots.dat" get_fp "a");
 (run)
 ;----------------------------------------------------------------------

