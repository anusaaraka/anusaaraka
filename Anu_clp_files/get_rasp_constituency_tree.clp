(load-facts "rasp_constituents.dat")
(load-facts "rasp_node_category.dat")
(assert (daughter ROOT-1))
(assert (Cons-tree))

(defrule print_mother_node
(declare (salience 500))
?f<-(Mother-Daughters ?Mot ?d $?daut)
?f1<-(daughter ?Mot) 
?f2<-(Cons-tree $?cons-tree)
=>
(retract ?f ?f1)
(assert (daughter ?d))
(assert (Mother-daughter ?Mot ?d))
(assert (Mother-Daughters ?Mot $?daut))
(if (eq (member$ ?Mot $?cons-tree) FALSE) then
(retract ?f2)
(assert (Cons-tree $?cons-tree LB ?Mot)))
)

(defrule print_daughter_node 
(declare (salience 400))
?f<-(Mother-Daughters ?Mot $?child)
?f1<-(daughter ?d)  
?f2<-(Mother-daughter ?Mot ?d)
(not (Node-Category ?d ?))
?f3<-(Cons-tree $?cons-tree )
=>

	(retract ?f ?f1 ?f2 ?f3)
	(assert (daughter ?Mot))
	(assert (Cons-tree $?cons-tree ?d RB))
)

(defrule print_daughter_node1
(declare (salience 300))
?f<-(Mother-Daughters ?Mot $?child)
?f1<-(daughter ?d)
?f2<-(Mother-daughter ?Mot ?d)
?f3<-(Cons-tree $?cons-tree )
=>

  (if (eq (length $?child) 0) then
        (retract ?f ?f1 ?f2 ?f3)
        (assert(daughter ?Mot))
        (assert (Cons-tree $?cons-tree RB))
  else
        (retract ?f1 ?f2)
        (assert (daughter ?Mot))
 )
)

(watch facts)
(watch rules)
(run)
(save-facts "constituency_tree_tmp.dat" local Cons-tree)
(exit)

