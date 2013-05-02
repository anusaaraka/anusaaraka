 (defglobal ?*min_fp*  = min_fp)
 (defglobal ?*count* = 1)
 (defglobal ?*count1* = 1)

;(defrule del_no_mng_fact
;(declare (salience 20))
;?f0<-(id-Apertium_output ?id)
;=>
;        (retract ?f0)
;)
;------------------------------------------------------------------------------------------
(defrule get_id_for_mng
(declare (salience 10))
?f0<-(id-Apertium_output ?id $?mng)
=>
	(retract ?f0)
	(assert (id-hnd_mng ?*count* $?mng))
	(assert (potential_id-candidate_id ?id ?*count*))
	(bind ?*count* (+ ?*count* 1))
)
;------------------------------------------------------------------------------------------
(defrule potential_count
(declare (salience 9))
(potential_id-candidate_id ?aid ?mid1) 
(not (anu_id-candidate_ids ?aid $?))
=>
        (assert (anu_id-candidate_ids ?aid))
)
;------------------------------------------------------------------------------------------
(defrule potential_count1
(declare (salience 8))
(potential_id-candidate_id ?aid ?mid)
?f<-(anu_id-candidate_ids ?aid $?mem)
(test (eq (member$ ?mid $?mem) FALSE))
=>
        (retract ?f)
        (bind $?mem (sort > (create$ $?mem ?mid)))
        (assert (anu_id-candidate_ids ?aid $?mem))
)
;------------------------------------------------------------------------------------------
(defrule print_head
(declare (salience 7))
=>
	(printout ?*min_fp* "MINION 3" crlf "**VARIABLES** " crlf)
)
;------------------------------------------------------------------------------------------
(defrule print_DISCRETE
(declare (salience 6))
?f0<-(hindi_id_order ?id $?order)
(anu_id-candidate_ids ?id ?f $? ?l)
=>
	(retract ?f0)
	(printout ?*min_fp* "DISCRETE  c"?*count1* "	{"?f".."?l"}" crlf )
	(bind ?*count1* (+ ?*count1* 1))
	(assert (hindi_id_order $?order))
)
;------------------------------------------------------------------------------------------
(defrule print_DISCRETE1
(declare (salience 6))
?f0<-(hindi_id_order ?id $?order)
(anu_id-candidate_ids ?id ?f)
=>
        (retract ?f0)
        (printout ?*min_fp* "DISCRETE  c"?*count1* "	{"?f".."?f"}" crlf )
        (bind ?*count1* (+ ?*count1* 1))
        (assert (hindi_id_order $?order))
)
;------------------------------------------------------------------------------------------
(defrule print_end
(declare (salience 4))
=>
	(printout ?*min_fp* crlf "**EOF** " crlf)
)
;------------------------------------------------------------------------------------------
