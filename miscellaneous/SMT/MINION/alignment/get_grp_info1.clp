;This file is written by Shirisha Manju


(defglobal ?*total_count* = 0)
(defglobal ?*h_count* = 0)

(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))


;Added by Shirisha Manju
(defrule rm_prep_id_from_prawiniXi
(declare (salience 2002))
?f0<-(mot-cat-praW_id-largest_group ?m ?c ?p_id $?d ?id $?d1)
(pada_info (preposition $? ?id $?))
=>
        (retract ?f0)
        (assert (mot-cat-praW_id-largest_group ?m ?c ?p_id $?d $?d1))
)
;------------------------------------------------------------------------------------------------------------
(defrule get_scope_dummy_fact
(declare (salience 2001))
(mot-cat-praW_id-largest_group ?m ? ? $?ids)
=>
        (assert (grp_ids-head_ids-var_ids $?ids - -))
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (16-08-12)
(defrule rm_str_from_ids
(declare (salience 2001))
?f0<-(conj_head-components $?pre ?id $?post)
(test (eq (numberp ?id) FALSE))
=>
        (retract ?f0)
        (assert (conj_head-components $?pre $?post))
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
(defrule sort_conj_ids
(declare (salience 1500))
(conj_head-components $?ids)
=>
        (bind ?g_ids (sort > ?ids))
        (assert (conj_components ?g_ids))
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
(defrule get_small_grp_info
(declare (salience 1100))
(or (pada_info (group_head_id ?id)(group_cat PP)(group_ids $?grp)) (conj_components $?grp))
(test (> (length $?grp) 1))
(hindi_id_order $?ids)
=>
        (bind ?*total_count* (+ ?*total_count* 1))
        (bind $?g_list (create$))
        (loop-for-count (?i 1 (length $?grp))
                (bind ?id (nth$ ?i $?grp))
                (bind ?pos (member$ ?id $?ids))
                (if (neq ?pos FALSE) then
                        (bind $?g_list (sort > (create$ $?g_list (- ?pos 1))))
                )
        )
        (assert (grp_ids-slot_ids $?grp - $?g_list))
	(bind ?total (string-to-field (str-cat total ?*total_count*)))
        (assert (get_cost_for_grp $?grp - ?total))
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
(defrule get_prawiniXi_grp_info
(declare (salience 1000))
(grp_ids-head_ids-var_ids $?grp - $?hids - $?var)
(hindi_id_order $?ids)
(test (> (length $?grp) 1))
(not (grp_ids-slot_ids $?grp - $?))
=>
	(bind ?*total_count* (+ ?*total_count* 1))
        (bind $?g_list (create$))
        (loop-for-count (?i 1 (length $?grp))
                (bind ?id (nth$ ?i $?grp))
                (bind ?pos (member$ ?id $?ids))
                (if (neq ?pos FALSE) then
                        (bind $?g_list (sort > (create$ $?g_list (- ?pos 1))))
                )
        )
        (assert (grp_ids-slot_ids $?grp - $?g_list))
	(bind ?total (string-to-field (str-cat total ?*total_count*)))
        (assert (get_cost_for_grp $?grp - ?total))
)
;------------------------------------------------------------------------------------------------------------
(defrule get_total_count
(declare (salience 800))
=>
	(assert (total_count ?*total_count*))
)
