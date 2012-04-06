 (deffunction never-called ()
 (assert(Head-Level-Mother-Daughters))
 )

 (defrule print_mother_node
 (declare (salience 500))
 ?f<-(Head-Level-Mother-Daughters ?head ?lvl ?Mot ?d $?daut)
 ?f1<-(daughter ?Mot) 
 ?f2<-(Cons-tree $?cons-tree)
 =>
 (retract ?f ?f1)
 (assert (daughter ?d))
 (assert (Mother-daughter ?Mot ?d))
 (assert (Head-Level-Mother-Daughters ?head ?lvl ?Mot $?daut))
 (if (eq (member$ ?Mot $?cons-tree) FALSE) then
 (retract ?f2)
 (assert (Cons-tree $?cons-tree LB ?Mot)))
 )
 
 (defrule print_daughter_node 
 (declare (salience 400))
 ?f<-(Head-Level-Mother-Daughters ?head ?lvl ?Mot $?child)
 ?f1<-(daughter ?d)  
 ?f2<-(Mother-daughter ?Mot ?d)
 ?f3<-(Cons-tree $?cons-tree )
 =>
    (if (eq (numberp ?d) TRUE) then
 	(retract ?f ?f1 ?f2 ?f3)
 	(assert (daughter ?Mot))
 	(assert (Cons-tree $?cons-tree ?d RB))
   else (if (eq (length $?child) 0) then
 	(retract ?f ?f1 ?f2 ?f3)
 	(assert(daughter ?Mot))
 	(assert (Cons-tree $?cons-tree RB))
   else
 	(retract ?f1 ?f2)
 	(assert (daughter ?Mot))))
 )
