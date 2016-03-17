;------------------------------------------------------------
(defrule rm_aux_psp_rel
(declare (salience 150))
?f0<-(rel_name-grouped_rel_hids ?r&lwg__vaux|lwg__psp ? ?)
=>
	(retract ?f0)
)
;------------------------------------------------------------
(defrule get_rel_ids
(declare (salience 50))
(rel_name-grouped_rel_hids ? ?id ?id1)
(rel_name-grouped_rel_hids ? ?id ?id2)
(rel_name-grouped_rel_hids ? ?in ?id)
(test (neq ?id1 ?id2))
(not (hid-in_id-out_ids  ?id $?))
=>
	(assert	(hid-in_id-out_ids  ?id ?in ?id1 ?id2))
)
;------------------------------------------------------------
(defrule get_rel_ids1
(declare (salience 40))
(rel_name-grouped_rel_hids ? ?id ?id1)
(rel_name-grouped_rel_hids ? ?in ?id)
(not (hid-in_id-out_ids  ?id $?))
=>
        (assert (hid-in_id-out_ids  ?id ?in ?id1))
)
;------------------------------------------------------------
(defrule get_multiple_ids
(declare (salience 50))
(rel_name-grouped_rel_hids ? ?id ?id1)
?f0<-(hid-in_id-out_ids  ?id ?in $?ids)
(test (eq (integerp (member$ ?id1 $?ids)) FALSE))
=>
	(retract ?f0)
	(bind $?ids (sort > (create$ $?ids ?id1)))
        (assert (hid-in_id-out_ids  ?id ?in $?ids)) 
)
;===================  to get eng parser in and out ids ====================

(defrule get_std_ids_with_root
(declare (salience 16))
(rel_name-grouped_rel_eids  ? 0 ?id)
(rel_name-grouped_rel_eids  ? ?id ?id1)
(rel_name-grouped_rel_eids  ? ?id ?id2)
(test (neq ?id1 ?id2))
(not (sid-in_id-out_ids  ?id $?))
=>
        (assert (sid-in_id-out_ids ?id 0 ?id1 ?id2))
)

(defrule get_std_ids
(declare (salience 15))
(rel_name-grouped_rel_eids  ? ?id ?id1)
(rel_name-grouped_rel_eids  ? ?id ?id2)
(rel_name-grouped_rel_eids  ? ?in ?id)
(test (neq ?id1 ?id2))
(not (sid-in_id-out_ids  ?id $?))
=>
        (assert (sid-in_id-out_ids ?id ?in ?id1 ?id2))
)
;------------------------------------------------------------
(defrule get_std_ids1
(declare (salience 14))
(rel_name-grouped_rel_eids  ? ?id ?id1)
(rel_name-grouped_rel_eids  ? ?id ?id2)
(not (rel_name-grouped_rel_eids $? ?id ))
(test (neq ?id1 ?id2))
(not (sid-in_id-out_ids  ?id $?))
=>
        (if (> ?id1 ?id2) then
                (assert (sid-in_id-out_ids ?id 0 ?id2 ?id1))
        else
                (assert (sid-in_id-out_ids ?id 0 ?id1 ?id2))
        )
)
;------------------------------------------------------------
(defrule get_std_multiple_ids
(declare (salience 13))
(rel_name-grouped_rel_eids  ? ?id ?id1)
?f0<-(sid-in_id-out_ids ?id ?in $?ids)
(test (eq (integerp (member$ ?id1 $?ids)) FALSE))
=>
        (retract ?f0)
        (bind $?ids (sort > (create$ $?ids ?id1)))
        (assert (sid-in_id-out_ids  ?id ?in $?ids))
)
;------------------------------------------------------------
(defrule get_std_last_node
(declare (salience 11))
(rel_name-grouped_rel_eids  ?r&~root ?id ?id1)
(not (rel_name-grouped_rel_eids $? ?id))
(not (sid-in_id-out_ids  ?id $?))
=>
        (assert (sid-in_id-out_ids ?id 0 ?id1))
)

(defrule get_std_last_node1
(declare (salience 11))
(rel_name-grouped_rel_eids  ? ?id ?id1)
(rel_name-grouped_rel_eids ? ?in ?id)
(not (sid-in_id-out_ids  ?id $?))
=>
        (assert (sid-in_id-out_ids ?id ?in ?id1))
)

;===================== to generate hindi in out debugging ====================
(defrule cp_dummy_fact
(declare (salience -1))
(hid-in_id-out_ids  $?d)
=>
	(assert (h_wrd-in_wrd-out_wrds $?d))
)

(defrule get_wrd_fact
(declare (salience -2))
?f0<-(h_wrd-in_wrd-out_wrds ?h $?d ?id $?d1)
(manual_id-word ?id ?wrd)
=>
	(retract ?f0)
	(assert (h_wrd-in_wrd-out_wrds ?h $?d ?wrd $?d1))
)

(defrule get_h_wrd
(declare (salience -3))
?f0<-(h_wrd-in_wrd-out_wrds ?h $?d)
(manual_id-word ?h ?wrd)
=>
        (retract ?f0)
        (assert (h_wrd-in_wrd-out_wrds ?wrd $?d))
)

;===================== to generate eng in out debugging ====================

(defrule cp_dummy_anu_fact
(declare (salience -4))
(sid-in_id-out_ids $?d)
=>
	(assert (s_wrd-in_wrd-out_wrds $?d))
)

(defrule get_awrd_fact
(declare (salience -5))
?f0<-(s_wrd-in_wrd-out_wrds ?h $?d ?id $?d1)
(id-word ?id ?wrd)
=>
        (retract ?f0)
        (assert (s_wrd-in_wrd-out_wrds ?h $?d ?wrd $?d1))
)

(defrule get_ah_wrd
(declare (salience -6))
?f0<-(s_wrd-in_wrd-out_wrds ?h $?d)
(id-word ?h ?wrd)
=>
        (retract ?f0)
        (assert (s_wrd-in_wrd-out_wrds ?wrd $?d))
)




