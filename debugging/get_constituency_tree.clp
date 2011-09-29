(load-facts "E_constituents_info.dat")
(load-facts "Node_category_info.dat")
(assert (daughter ROOT1))
(assert (Cons-tree))
(defglobal ?*i* = 1) 

(defrule change_mot_node
(declare (salience 600))
?f<-(Head-Level-Mother-Daughters ?head ?lvl ?Mot $?child)
(not (Mother-changed ?Mot))
=>
(retract ?f)
(assert (Mother-changed ))
           (bind ?str (str-cat ?Mot "->"))
           (bind ?len (length $?child))
          (loop-for-count (?i 1 ?len)
                           (bind ?j (nth$ ?i $?child))
                           (if (eq ?i 1) then
                           (bind ?str (str-cat ?str ?j))
                           else
                           (bind ?str (str-cat ?str "+" ?j)))
                            
            )
 (bind ?str (explode$ ?str))
; (bind ?*i* (+ ?*i* 1))
; (bind ?str (explode$ (str-cat "A" ?*i*)))
 (assert (Mother-changed ?str))
 (assert (Head-Level-Mother-Daughters ?head ?lvl ?str ?Mot $?child)))

(defrule print_mother_node
(declare (salience 500))
?f<-(Head-Level-Mother-Daughters ?head ?lvl ?str ?Mot ?d $?daut)
?f1<-(daughter ?Mot) 
?f2<-(Cons-tree $?cons-tree)
=>
(retract ?f ?f1)
(assert (daughter ?d))
(assert (Mother-daughter ?Mot ?d))
(assert (Head-Level-Mother-Daughters ?head ?lvl ?str ?Mot $?daut))
(if (eq (member$ ?str $?cons-tree) FALSE) then
(retract ?f2)
(assert (Cons-tree $?cons-tree LB ?str)))
;(assert (Cons-tree $?cons-tree LB ?Mot)))
)

(defrule print_daughter_node 
(declare (salience 400))
?f<-(Head-Level-Mother-Daughters ?head ?lvl ?str ?Mot $?child)
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
?f<-(Head-Level-Mother-Daughters ?head ?lvl ?str ?Mot $?child)
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

;(defrule change_mot_node
;(declare (salience -100))
;?f<-(Head-Level-Mother-Daughters ?head ?lvl ?str ?Mot $?child)
;=>
;(retract ?f)
;           (bind ?str (str-cat ?Mot "->"))
;           (bind ?len (length $?child))
;           (loop-for-count (?i 1 ?len)
;                           (bind ?j (nth$ ?i $?child))
;                           (bind ?str (str-cat ?str ?j))
;            )
; (assert (Head-Level-Mother-Daughters ?head ?lvl ?str $?child)))

(watch facts)
(watch rules)
(run)
(save-facts "cons_tree.dat" local Cons-tree)
(exit)

