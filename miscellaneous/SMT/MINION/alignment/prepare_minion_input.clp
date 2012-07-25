(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

(defglobal ?*minion_fp*  = minion_fp)

;(defrule potential_count_of_anu_id
;(declare (salience 2000))
;?f<-(potential_assignment_vacancy_id-candidate_id ?aid ?mid)
;?f1<-(potential_assignment_vacancy_id-candidate_id ?aid ?mid1)
;(test (neq ?mid ?mid1))
;(not (anu_slot_candidate_ids ?aid $?))
;(manual_id-mapped_id ?mid ?mapped_id)
;(manual_id-mapped_id ?mid1 ?mapped_id1)
;=>
;        (assert (anu_slot_candidate_ids ?aid ?mapped_id ?mapped_id1))
;)

(defrule potential_count_of_manual_id
(declare (salience 2000))
?f<-(potential_assignment_vacancy_id-candidate_id ?aid ?mid)
?f1<-(potential_assignment_vacancy_id-candidate_id ?aid1 ?mid)
(test (neq ?aid ?aid1))
(manual_id-mapped_id ?mid ?mapped_id)
(not (man_id-candidate_slots ?mapped_id $?))
=>
        (assert (man_id-candidate_slots ?mapped_id ?aid ?aid1))
)

;(defrule potential_count_of_anu_id1
;(declare (salience 2000))
;(potential_assignment_vacancy_id-candidate_id ?aid ?mid)
;?f<-(anu_slot_candidate_ids ?aid $?mem)
;(manual_id-mapped_id ?mid ?mapped_id)
;(test (eq (member$ ?mapped_id $?mem) FALSE))
;=>
;        (retract ?f)
;        (assert (anu_slot_candidate_ids ?aid $?mem ?mapped_id))
;)

(defrule potential_count_of_manual_id1
(declare (salience 2000))
(potential_assignment_vacancy_id-candidate_id ?aid ?mid)
?f<-(man_id-candidate_slots ?mapped_id $?mem)
(manual_id-mapped_id ?mid ?mapped_id)
(test (eq (member$ ?aid $?mem) FALSE))
=>
        (retract ?f)
	(bind $?mem (sort > (create$ $?mem ?aid)))
;        (assert (man_id-candidate_slots ?mapped_id $?mem ?aid))
        (assert (man_id-candidate_slots ?mapped_id $?mem))
)

;(defrule map_potential_fact
;(declare (salience 1900))
;?f<-(anu_slot_candidate_ids ?aid $?pre ?mid $?pos)
;(manual_id-mapped_id ?mid ?mapped_id)
;(not (aid-mid-mapped_id ?aid ?mid ?mapped_id))
;=>
;	(assert (anu_slot_candidate_ids ?aid $?pre ?mapped_id $?pos))
;	(assert (aid-mid-mapped_id ?aid ?mid ?mapped_id))
;)


(defrule manul_word_count
(declare (salience 1000))
(manual_id-mng ?mid $?)
(not (manual_id-mng ?mid1&:(< ?mid ?mid1) $?))
=>
	(assert (manual_word_length ?mid))
)


(defrule find_slot_length
(declare (salience 1000))
(hindi_id_order $?hin_order)
=>
	(assert (slot-length (length$ $?hin_order)))
)


(defrule print_array
(declare (salience 999))
(manual_word_length ?manual_word_len)
(slot-length  ?anu_slot_len)
=>
	(printout ?*minion_fp* " MINION 3" crlf crlf)
	(printout ?*minion_fp* " **VARIABLES**" crlf)
 	(printout ?*minion_fp* " DISCRETE ws["?manual_word_len","?anu_slot_len"] {0..1}" crlf crlf)
	(assert (print_constraint_info))
)

(defrule print_constraints
(declare (salience 990))
(print_constraint_info)
=>
        (printout ?*minion_fp* " **CONSTRAINTS** " crlf crlf)
)

(defrule print_dictionary_constarints
(declare (salience 980))
(anu_id-anu_mng-sep-man_id-man_mng ?aid $? - ?mid $?)
(hindi_id_order $?hin_order)
(manual_id-mapped_id ?mid ?mapped_id)
=>
	(printout ?*minion_fp* " eq(ws["(- ?mapped_id 1)","(- (member$ ?aid $?hin_order) 1)"],1)" crlf)
)

(defrule print_poten_constr_info
(declare (salience 970))
(print_constraint_info)
=>
        (printout ?*minion_fp* crlf crlf " #**PRINT POTENTIAL CONSTRAINTS** " crlf crlf)
)

(defrule printf_potential_constraints
(declare (salience 970))
(anu_slot_candidate_ids ?aid $?grp)
(hindi_id_order $?hin_order)
(test (member$ ?aid $?hin_order))
=>
	(printout ?*minion_fp* " #anu_id-man_ids-hindi-order   "?aid"  "$?grp"  "$?hin_order  crlf)
	(printout ?*minion_fp* " watched-or({" )
	(loop-for-count (?i 1 (length $?grp))
			(bind ?wrd_id (nth$ ?i $?grp))
			(printout ?*minion_fp* "eq(ws["(- ?wrd_id 1)","(- (member$ ?aid $?hin_order) 1)"],1)")
                        (if (neq ?i (length $?grp)) then 
			 ;   (printout ?*minion_fp* "})" crlf crlf)
			;else
			     (printout ?*minion_fp* ","))
	)
	(printout ?*minion_fp* "})" crlf crlf)
)

(defrule printf_potential_constraints1
(declare (salience 965))
(man_id-candidate_slots ?mid $?grp)
(hindi_id_order $?hin_order)
=>
	(printout ?*minion_fp* " #man_id-anu_ids-hindi-order   "?mid"  "$?grp"  "$?hin_order crlf)
        (printout ?*minion_fp* " watched-or({" )
        (loop-for-count (?i 1 (length $?grp))
                        (bind ?slot_id (nth$ ?i $?grp))
			(if (neq (member$ ?slot_id $?hin_order) FALSE) then
                        (printout ?*minion_fp* "eq(ws["(- ?mid 1)","(- (member$ ?slot_id $?hin_order) 1)"],1)")
                        (if (neq ?i (length $?grp)) then
                          ;  (printout ?*minion_fp* "})" crlf crlf)
                       ; else
                            (printout ?*minion_fp* ",")))
        )
	(printout ?*minion_fp* "})" crlf crlf)
)

(defrule print_default_assignment
(declare (salience 960))
(manual_word_length ?manual_word_len)
(slot-length  ?anu_slot_len)
=>
        (printout ?*minion_fp* crlf crlf)
	(loop-for-count (?i 0 (- ?manual_word_len 1))
			(printout ?*minion_fp* " sumgeq(ws["?i",_],1)" crlf)
        )
        (printout ?*minion_fp* crlf crlf)
	(loop-for-count (?i 0 (- ?manual_word_len 1))
                        (printout ?*minion_fp* " sumleq(ws["?i",_],1)" crlf)
        )
        (printout ?*minion_fp* crlf crlf)
        (loop-for-count (?i 0 (- ?anu_slot_len 1))
                        (printout ?*minion_fp* " sumleq(ws[_,"?i"],1)" crlf)
        )
        (printout ?*minion_fp* crlf crlf)
)
(defrule rm_prep_id_from_scope
(declare (salience 955))
?f0<-(mot-cat-praW_id-largest_group ?m ?c ?p_id $?d ?id $?d1)
(id-cat_coarse ?id preposition)
(not (id-cat_coarse =(+ ?id 1) verb))
=>
	(retract ?f0)
	(assert (mot-cat-praW_id-largest_group ?m ?c ?p_id $?d $?d1))
)	

(defrule print_prawiniXi_grp_info
(declare (salience 954))
(mot-cat-praW_id-largest_group ? ? ? $?grp)
(hindi_id_order $?ids)
=>
        (bind $?g_list (create$))
        (loop-for-count (?i 1 (length $?grp))
                (bind ?id (nth$ ?i $?grp))
                (bind ?pos (member$ ?id $?ids))
		(bind $?g_list (sort > (create$ $?g_list (- ?pos 1))))
        )
        (assert (grp_ids-slot_ids $?grp - $?g_list))
)


(defrule print_grp_info
(declare (salience 950))
(pada_info (group_head_id ?id)(group_cat PP)(group_ids $?grp))
(test (> (length $?grp) 1))
(hindi_id_order $?ids)
(not (grp_ids-slot_ids $?grp - $?))
=>
	(bind $?g_list (create$))
        (loop-for-count (?i 1 (length $?grp))
                (bind ?id (nth$ ?i $?grp))
                (bind ?pos (member$ ?id $?ids))
                (bind $?g_list (create$ $?g_list (- ?pos 1)))
        )
        (assert (grp_ids-slot_ids $?grp - $?g_list))
)

(defrule generate_grp_info
(declare (salience 940))
?f0<-(grp_ids-slot_ids $?anu_grp - $?grp)
(manual_word_length  ?manual_word_len)
(slot-length  ?anu_slot_len)
=>
	(printout ?*minion_fp* crlf " #group : "(implode$ $?anu_grp) " ---- " (implode$ $?grp))
        (printout ?*minion_fp*  crlf " watched-or({" crlf )
        (bind ?count 0)
        (loop-for-count (?k ?count (- ?manual_word_len 1))
                (printout ?*minion_fp*  "	watched-and({" crlf "		sumgeq([")
                (loop-for-count (?i ?count (- (+ (length $?grp) ?count ) 1))
                        (loop-for-count (?j 1 (length $?grp) )
                                (bind ?s_id (nth$ ?j $?grp))
                                (printout ?*minion_fp*  "ws["?i","?s_id "]")
				(if (neq ?j (length $?grp)) then
				(printout ?*minion_fp* ","))
                        )
                        (if (eq ?i (- (+ (length $?grp) ?count ) 1 )) then
                                (printout ?*minion_fp*  "],1)"crlf )
                        else
                                 (printout ?*minion_fp*  "],1),"crlf "		sumgeq([")
                        )
                )
                (printout ?*minion_fp*  "	})" )
                (if (eq (+ ?k (length $?grp)) ?manual_word_len )  then
			(printout ?*minion_fp* crlf)
                        (break)
		else
			(printout ?*minion_fp* "," crlf)
                )
                (bind ?count (+ ?count 1))
        )
        (printout ?*minion_fp*  "})" crlf)
)

(defrule print_EOF_info
(declare (salience -100))
(print_constraint_info)
=>
	(printout ?*minion_fp* crlf " **EOF**" crlf)
)
