 (defrule rm_underscore_in_aper_op
 (declare (salience 2000))
 ?f<-(id-Apertium_output ?a_id $?a_grp)
 (test (str-index "_"  (implode$ (create$ $?a_grp))))
 =>
        (retract ?f)
        (bind ?a_op (implode$ (create$ $?a_grp)))
        (bind ?a_op1 "")
        (bind ?index (str-index "_" ?a_op))
                (if (neq ?index FALSE) then
                        (while (neq ?index FALSE)
                                (bind ?a_op1 (str-cat ?a_op1 (sub-string 1 (- ?index 1) ?a_op) " "))
                                (bind ?a_op (sub-string (+ ?index 1) (length ?a_op) ?a_op))
                                (bind ?index (str-index "_" ?a_op))
                         )
                )
        (bind ?a_op1 (explode$ (str-cat ?a_op1 (sub-string 1 (length ?a_op) ?a_op))))
        (assert (id-Apertium_output ?a_id ?a_op1))
 )

 (defrule rm_hypen_in_aper_op
 (declare (salience 2000))
 ?f<-(id-Apertium_output ?a_id $?a_grp)
 (test (str-index "-"  (implode$ (create$ $?a_grp))))
 =>
        (retract ?f)
        (bind ?a_op (implode$ (create$ $?a_grp)))
        (bind ?a_op1 "")
        (bind ?index (str-index "-" ?a_op))
                (if (neq ?index FALSE) then
                        (while (neq ?index FALSE)
                                (bind ?a_op1 (str-cat ?a_op1 (sub-string 1 (- ?index 1) ?a_op) " "))
                                (bind ?a_op (sub-string (+ ?index 1) (length ?a_op) ?a_op))
                                (bind ?index (str-index "-" ?a_op))
                         )
                )
        (bind ?a_op1 (explode$ (str-cat ?a_op1 (sub-string 1 (length ?a_op) ?a_op))))
        (assert (id-Apertium_output ?a_id ?a_op1))
 )



(defrule dummy_fact_for_manual_group
(declare (salience 1000))
?f<-(anu_id-node-word-root-tam ?id $?)
=>
	(assert (anu_id-manual_grp ?id))
)

(defrule get_exact_group_match
(declare (salience 900))
?f<-(anu_id-node-word-root-tam ?id ? $?anu_grp_mng - ? - ?)
(manual_id-node-word-root-tam  ?id1 ? $?man_grp_mng - ? - ?)
?f2<-(anu_id-manual_grp ?id $?grp)
(test (eq (member$ ?id1 $?grp) FALSE)) 
(test (member$ $?man_grp_mng $?anu_grp_mng))
(not (grouping_done ?id1))
=>
	(retract ?f2)
	(assert (grouping_done ?id1))
	(assert (anu_id-manual_grp ?id $?grp ?id1))	
)

(defrule get_partial_group_match
(declare (salience 850))
?f<-(anu_id-node-word-root-tam ?id ? $?anu_grp_mng - ? - ?)
?f1<-(manual_id-node-word-root-tam  ?id1 ? $?pre $?man_grp_mng $?pos - ? - ?)
?f2<-(anu_id-manual_grp ?id $?grp)
(test (and ( > (length $?man_grp_mng) 0) (member$ $?man_grp_mng $?anu_grp_mng)))
(test (eq (member$ ?id1 $?grp) FALSE))
(test (eq (member$ $?man_grp_mng (create$ ke kA)) FALSE))
(not (grouping_done ?id1))
=>
        (retract ?f2)
        (assert (grouping_done ?id1))
        (assert (anu_id-manual_grp ?id $?grp ?id1))
)

(defrule get_physics_dictionary_match
(declare (salience 800))
?f<-(anu_id-node-word-root-tam ?anu_grp_id ? $?anu_grp_mng - ? - ?)
?f1<-(manual_id-node-word-root-tam ?man_id ? $?man_grp_mng - ?root_mng - ?)
(not (grouping_done ?man_id))
(id-Apertium_output ?anu_id $?anu_mng)
(test (member$ $?anu_mng $?anu_grp_mng))
(id-root ?anu_id ?e_root)
(id-org_wrd-root-dbase_name-mng ?anu_id ? ?e_root Physics_dictionary_gdbm  $?db_mng)
(test (member$ ?root_mng $?db_mng)) 
?f2<-(anu_id-manual_grp ?anu_grp_id $?grp)
(test (eq (member$ ?man_id $?grp) FALSE))
(test (eq (member$ ?root_mng (create$ ke kA)) FALSE))
=>
        (retract ?f2)
        (assert (grouping_done ?man_id))
        (assert (anu_id-manual_grp ?anu_grp_id $?grp ?man_id))
)

(defrule get_default_dictionary_match
(declare (salience 750))
?f<-(anu_id-node-word-root-tam ?anu_grp_id ? $?anu_grp_mng - ? - ?)
?f1<-(manual_id-node-word-root-tam ?man_id ? $?man_grp_mng - ?root_mng - ?)
;(id-node-word-root ? ? ? ?root_mng)
(not (grouping_done ?man_id))
(id-Apertium_output ?anu_id $?anu_mng)
(test (member$ $?anu_mng $?anu_grp_mng))
(id-root ?anu_id ?e_root)
(id-org_wrd-root-dbase_name-mng ?anu_id ? ?e_root iit-bombay_and_old_wsd_gdbms|Physics_dictionary_gdbm $?db_mng)
(test (member$ ?root_mng $?db_mng)) 
?f2<-(anu_id-manual_grp ?anu_grp_id $?grp)
(test (eq (member$ ?man_id $?grp) FALSE))
(test (eq (member$ ?root_mng (create$ ke kA)) FALSE))
=>
	(retract ?f2)
	(assert (grouping_done ?man_id))
        (assert (anu_id-manual_grp ?anu_grp_id $?grp ?man_id))
)

(defrule default_rule1
(declare (salience 100))
?f1<-(manual_id-node-word-root-tam ?man_id ? $?man_grp_mng - ?root_mng - ?)
(not (grouping_done ?man_id))
?f2<-(anu_id-manual_grp ?anu_grp_id $?grp)
(test (and (member$ (+ ?man_id 1) $?grp) (member$ (- ?man_id 1) $?grp)))
=>
(retract ?f2)
        (assert (grouping_done ?man_id))
        (assert (anu_id-manual_grp ?anu_grp_id $?grp ?man_id))
)

(defrule default_rule2
(declare (salience 50))
?f1<-(manual_id-node-word-root-tam ?man_id ? $?man_grp_mng - ?root_mng - ?)
(not (grouping_done ?man_id))
?f2<-(anu_id-manual_grp ?anu_grp_id $?grp)
(test (and (member$ (+ ?man_id 1) $?grp) (member$ (+ ?man_id 1) $?grp)))
=>
(retract ?f2)
        (assert (grouping_done ?man_id))
        (assert (anu_id-manual_grp ?anu_grp_id $?grp ?man_id))
)

(defrule get_new_fact
?f0<-(anu_id-manual_grp ?anu_grp_id $?man_grp_ids)
?f<-(anu_id-node-word-root-tam ?anu_grp_id ? $?anu_grp_mng - ? - ?)
(test (> (length $?man_grp_ids) 0))
=>
	(retract ?f0)
	(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng-man_grp_ids ?anu_grp_id $?anu_grp_mng - (nth$ (length $?man_grp_ids) $?man_grp_ids) - (sort > $?man_grp_ids)- (sort > $?man_grp_ids)))
)

(defrule substitute_man_mng
?f<-(anu_id-a_grp_mng-sep-manual_id-m_grp_mng-man_grp_ids ?anu_grp_id $?anu_grp_mng - ?man_id - $?pre ?id $?pos - $?man_grp_ids)
(manual_id-node-word-root-tam ?id ? $?man_grp_mng - ? - ?)
=>
	(retract ?f)
	(assert (anu_id-a_grp_mng-sep-manual_id-m_grp_mng-man_grp_ids ?anu_grp_id $?anu_grp_mng - ?man_id - $?pre $?man_grp_mng $?pos - $?man_grp_ids))
)

