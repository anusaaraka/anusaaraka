;This file is written by Maha Laxmi and Shirisha Manju

(defglobal ?*minion_fp*  = minion_fp)
(defglobal ?*non_refiy_list* = (create$ ))


(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

;=======================================  Deffunctions =====================================================
;Added by Shirisha Manju (03-08-12)
(deffunction get_or_facts (?index $?grp)
        (bind ?row ?index)
        (loop-for-count (?i 1 (length $?grp)  )
                (bind ?s_id (nth$ ?i $?grp))
                (if (eq ?i (length $?grp) ) then
                        (printout ?*minion_fp*  "eq(ws["?row","?s_id "],1), sumleq(ws[_,"?s_id"],0) })," crlf )
                else
                        (printout ?*minion_fp*  "eq(ws["?row","?s_id "],1), sumleq(ws[_,"?s_id"],0) })," crlf )
                        (printout ?*minion_fp* "                watched-or({ ")
                )
                (bind ?row (+ ?row 1))
        )
        (bind ?new_row ?row)
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (03-08-12)
(deffunction get_main_or_lower_diagonal(?manual_word_len ?type ?total $?grp)
        (bind ?count 0)
        (loop-for-count (?k ?count (- ?manual_word_len 1) )
                (get_or_facts ?k $?grp)
                (if (>= (+ ?k (length $?grp)) ?manual_word_len )  then
                        (break)
                )
                (if (eq ?type main) then
                        (printout ?*minion_fp* "		eq("?total",40)" crlf "		}), " crlf)
                else
                        (printout ?*minion_fp* "		eq("?total",30)" crlf "		}), " crlf)
                )
                (printout ?*minion_fp* "	watched-and({"        crlf)
                (printout ?*minion_fp* "		watched-or({ ")
                (bind ?count (+ ?count 1))
        )
        (if (eq ?type main) then
                (printout ?*minion_fp* "		eq("?total",40)" crlf"		})," crlf)
        else
                (printout ?*minion_fp* "		eq("?total",30)" crlf"		})," crlf)
        )
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (03-08-12)
(deffunction get_upper_diagonal(?manual_word_len ?total $?grp)
        (bind ?count 0)
        (loop-for-count (?k ?count (- ?manual_word_len 1) )
                (get_or_facts ?k $?grp)
                (if (>= (+ ?k (length $?grp)) (- ?manual_word_len 1))  then
                        (break)
                )
                (printout ?*minion_fp* "		eq("?total",30)" crlf "		}), " crlf)
                (printout ?*minion_fp* "	watched-and({"        crlf)
                (printout ?*minion_fp* "		watched-or({ ")
                (bind ?count (+ ?count 1))
        )
        (printout ?*minion_fp* "                eq("?total",30)" crlf"          })," crlf)
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju(27-07-12)
(deffunction print_weighted_values (?manual_word_len $?grp)
        (bind ?plus_ones (* (length $?grp) (length $?grp)))
        (bind ?minus_ones (* (length $?grp) ?manual_word_len))
        (loop-for-count (?i 1 ?plus_ones)
                (printout ?*minion_fp*  "1,")
        )
        (loop-for-count (?i 1 ?minus_ones)
                (printout ?*minion_fp* "-1" )
                (if (neq ?i ?minus_ones) then
                        (printout ?*minion_fp* "," )
                else
                        (printout ?*minion_fp* "],")
                )
        )
)
;======================================== Remove/modify facts ================================================
;Added by Maha Laxmi
;As aux ids are grouped in LWG individual word alignment is not necessary.
(defrule remove_aux_potential_fact
(declare (salience 2001))
?f<-(root-verbchunk-tam-chunkids ? ? ? $?chunk_ids ?head_id)
(test (neq (length $?chunk_ids) 0))
?f1<-(potential_assignment_vacancy_id-candidate_id ?aid ?mid)
(test (member$ ?aid $?chunk_ids))
=>
        (retract ?f1)
	(printout ?*minion_fp* " # Removed aux potential fact :: mid-aid: "?mid"--"?aid" As aux ids are grouped in LWG" crlf)
)
;------------------------------------------------------------------------------------------------------------
(defrule remove_prep_potential_fact
(declare (salience 2001))
(pada_info (group_head_id ?id)(group_cat PP)(preposition $? ?aid $?))
?f1<-(potential_assignment_vacancy_id-candidate_id ?aid ?mid)
=>
        (retract ?f1)
        (printout ?*minion_fp* " # Removed prep potential fact :: mid-aid: "?mid"--"?aid" As preositions ids are grouped with PP" crlf)
)
;==============================================================================================================
;Added by Maha Laxmi
(defrule potential_count_of_manual_verb_id
(declare (salience 2000))
(man_verb_count-verbs ?man_verb_count&~0 $? ?man_verb $?)
(anu_verb_count-verbs ?anu_verb_count&~0 $?anu_verbs)
(manual_id-mapped_id ?man_verb ?mapped_id)
(not (man_id-candidate_slots ?mapped_id $?))
(not (ctrl_fact_for_poten_assignment ?mapped_id $? ?aid $?))
=>
        (assert (man_id-candidate_slots ?mapped_id $?anu_verbs))
	(if (eq (member$ (- ?mapped_id 1) ?*non_refiy_list*) FALSE) then
	(bind ?*non_refiy_list* (create$ (- ?mapped_id 1) ?*non_refiy_list*)))
	(printout t ?*non_refiy_list* crlf)

)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi
(defrule potential_count_of_manual_id
(declare (salience 2000))
?f<-(potential_assignment_vacancy_id-candidate_id ?aid ?mid)
?f1<-(potential_assignment_vacancy_id-candidate_id ?aid1 ?mid)
(test (neq ?aid ?aid1))
(manual_id-mapped_id ?mid ?mapped_id)
(not (man_id-candidate_slots ?mapped_id $?))
(not (ctrl_fact_for_poten_assignment ?mapped_id $? ?aid $?))
=>
        (assert (man_id-candidate_slots ?mapped_id ?aid ?aid1))
	(if (eq (member$ (- ?mapped_id 1) ?*non_refiy_list*) FALSE) then
	(bind ?*non_refiy_list* (create$ (- ?mapped_id 1) ?*non_refiy_list*)))
	(printout t ?*non_refiy_list* crlf)

)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi
(defrule potential_count_of_manual_id1
(declare (salience 2000))
(potential_assignment_vacancy_id-candidate_id ?aid ?mid)
?f<-(man_id-candidate_slots ?mapped_id $?mem)
(manual_id-mapped_id ?mid ?mapped_id)
(test (eq (member$ ?aid $?mem) FALSE))
(not (ctrl_fact_for_poten_assignment ?mapped_id $? ?aid $?))
=>
        (retract ?f)
	(bind $?mem (sort > (create$ $?mem ?aid))) ;Added by Shirisha Manju
        (assert (man_id-candidate_slots ?mapped_id $?mem))
)

;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi
(defrule potential_count_of_anu_id
(declare (salience 2000))
?f<-(potential_assignment_vacancy_id-candidate_id ?aid ?mid)
?f1<-(potential_assignment_vacancy_id-candidate_id ?aid ?mid1)
(test (neq ?mid ?mid1))
(manual_id-mapped_id ?mid ?mapped_id)
(manual_id-mapped_id ?mid1 ?mapped_id1)
(not (anu_id-candidate_words ?aid $? ?mapped_id $?))
(not (anu_id-candidate_words ?aid $? ?mapped_id1 $?))
(not (ctrl_fact_for_poten_assignment ?aid $? ?mapped_id $?))
(not (ctrl_fact_for_poten_assignment ?aid $? ?mapped_id1 $?))
=>
        (assert (anu_id-candidate_words ?aid ?mapped_id ?mapped_id1))

)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi
(defrule potential_count_of_anu_id1
(declare (salience 2000))
(potential_assignment_vacancy_id-candidate_id ?aid ?mid)
?f<-(anu_id-candidate_words ?aid $?mem)
(manual_id-mapped_id ?mid ?mapped_id)
(test (eq (member$ ?mapped_id $?mem) FALSE))
(not (ctrl_fact_for_poten_assignment ?aid $? ?mid $?))
=>
        (retract ?f)
        (bind $?mem (sort > (create$ $?mem ?mapped_id)))
        (assert (anu_id-candidate_words ?aid $?mem))
)
;------------------------------------------------------------------------------------------------------------
(defrule get_man_pot_ids
(declare (salience 1900))
(man_id-candidate_slots ?mid  $?sids)
(man_id-candidate_slots ?mid1 $?sids)
(test (neq ?mid ?mid1))
=>
	(bind $?mids (sort > (create$ ?mid ?mid1 )))
	(assert (man_id-candidate_slots_tmp $?mids - $?sids))
)
;------------------------------------------------------------------------------------------------------------
(defrule get_man_pot_ids1
(declare (salience 1901))
?f0<-(man_id-candidate_slots_tmp $?mids - $?sids)
(man_id-candidate_slots ?mid  $?sids)
(test (eq (member$ ?mid $?mids) FALSE))
=>
	(retract ?f0)
        (bind $?mids (sort > (create$ $?mids ?mid)))
        (assert (man_id-candidate_slots_tmp $?mids - $?sids))
)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi
(defrule manul_word_count
(declare (salience 1500))
(manual_id-mng ?mid $?)
(not (manual_id-mng ?mid1&:(< ?mid ?mid1) $?))
=>
	(assert (manual_word_length ?mid))
)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi
(defrule find_slot_length
(declare (salience 1500))
(hindi_id_order $?hin_order)
=>
	(assert (slot-length (length$ $?hin_order)))
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
(defrule print_sen_info
(declare (salience 1400))
(hindi_id_order $?hin_order)
(Eng_sen $?sen)
(manual_hin_sen $?m_sen)
=>
	(printout ?*minion_fp* crlf )
	(printout ?*minion_fp* " # Sen		: " (implode$ $?sen) crlf )
	(printout ?*minion_fp* " # Order	: " (implode$ $?hin_order) crlf)
	(printout ?*minion_fp* " # Slot_order	: " )
	(loop-for-count (?i 0 (- (length $?hin_order) 1))
		(printout ?*minion_fp*   ?i " " )
	)
	(printout ?*minion_fp* crlf " # Manual sen	: "(implode$ $?m_sen) crlf )
	(printout ?*minion_fp*  " # potential facts : " crlf) 
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
(defrule print_pot_info
(declare (salience 1300))
?f<-(man_id-candidate_slots ?mid $?grp)
(hindi_id_order $?ids)
(not (man_id-candidate_slots_ctrl_fact ?mid))
=>
	(bind $?g_list (create$))
	(loop-for-count (?i 1 (length $?grp))
                (bind ?id (nth$ ?i $?grp))
                (bind ?pos (member$ ?id $?ids))
		(if (neq ?pos FALSE) then
                	(bind $?g_list (sort > (create$ $?g_list (- ?pos 1))))
		)
        )
	(if (or (eq (length $?g_list) 0) (eq (length $?g_list) 1)) then
		(retract ?f)
		(assert (ctrl_fact_for_poten_assignment ?mid $?grp));asserting a control in order to stop firing rule "potential_count_of_manual_id1" again 
	else	    
	(printout ?*minion_fp* "        # man_w_id-anu_ids " ?mid " ---- " (implode$ $?grp))
        (printout ?*minion_fp* "   ==> " (- ?mid 1) " ---- " )
	(printout ?*minion_fp* (implode$ $?g_list) crlf))
)
;------------------------------------------------------------------------------------------------------------
(defrule get_dictionary_constarints
(declare (salience 1201))
(anu_id-anu_mng-sep-man_id-man_mng ?aid $? - ?mid $?)
(manual_id-mapped_id ?mid ?mapped_id)
=>
	(if (eq (member$ (- ?mapped_id 1) ?*non_refiy_list*) FALSE) then
        (bind ?*non_refiy_list* (create$ (- ?mapped_id 1) ?*non_refiy_list*)))
	(printout t ?*non_refiy_list* crlf)
)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi
(defrule print_array
(declare (salience 1200))
(manual_word_length ?manual_word_len)
(slot-length  ?anu_slot_len)
(hindi_id_order $?hin_order)
(Eng_sen $?sen)
=>
	(printout ?*minion_fp* " MINION 3" crlf crlf)
	(printout ?*minion_fp* " **VARIABLES**" crlf)
 	(printout ?*minion_fp* " DISCRETE ws["?manual_word_len","?anu_slot_len"] {0..1}" crlf  )
	(printout t ?*non_refiy_list* crlf)
	(loop-for-count (?i 0 (- ?manual_word_len 1))
		        (if (eq (member$ ?i ?*non_refiy_list*) FALSE) then
			(printout ?*minion_fp* " DISCRETE r"?i" {0..1}" crlf))
	)
	(assert (print_constraint_info))
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (20-08-12)
(defrule print_total_constraints
(declare (salience 1100))
(total_count ?t_count)
=> 
	(loop-for-count (?i 1 ?t_count)
		(bind ?total (str-cat total ?i ))
		(printout ?*minion_fp* " DISCRETE "?total "{0..100} " crlf)
	)
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (20-08-12)
(defrule print_var_constraints
(declare (salience 1050))
(grp_hids-slot_ids-var_ids $? - $? - $?vars)
=>
	(loop-for-count (?i 1 (length $?vars))
               (bind ?id (nth$ ?i $?vars))
               (printout ?*minion_fp* " DISCRETE  " ?id "{0..100} " crlf)
       )
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (20-08-12)
(defrule print_constraints
(declare (salience 1000))
(total_count ?t_count)
=>
	(bind ?t_count_val (+ (* (length ?*non_refiy_list*) 10) (* ?t_count 100)))
	(printout ?*minion_fp* " DISCRETE total{0.."?t_count_val"} " crlf crlf)
        (printout ?*minion_fp* " **SEARCH**" crlf)
        (printout ?*minion_fp* " #MAXIMISING " crlf)
        (printout ?*minion_fp* " MAXIMISING total" crlf crlf)
        (printout ?*minion_fp* " **CONSTRAINTS** " crlf crlf)
)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi
(defrule print_dictionary_constarints
(declare (salience 940))
(anu_id-anu_mng-sep-man_id-man_mng ?aid $? - ?mid $?)
(hindi_id_order $?hin_order)
(manual_id-mapped_id ?mid ?mapped_id)
(test (member$ ?aid $?hin_order))
=>
	(printout ?*minion_fp* " eq(ws["(- ?mapped_id 1)","(- (member$ ?aid $?hin_order) 1)"],1)" crlf)
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (16-08-12)
(defrule print_pot_fact_for_word
(declare (salience 930))
(fact_name-word_id-slot_id  eq_or_sumleq $?wids ?sid)
=>
	(printout ?*minion_fp* " watched-or({ " )
        (loop-for-count (?i 1 (length $?wids))
                        (bind ?id (nth$ ?i $?wids))
                        (printout ?*minion_fp* "eq(ws["?id","?sid"],1),")
        )
	
	(printout ?*minion_fp* "sumleq(ws[_,"?sid"],0)})" crlf)

        (loop-for-count (?i 1 (length $?wids))
                        (bind ?id (nth$ ?i $?wids))
                        (printout ?*minion_fp* " watched-or( {eq(ws["?id","?sid"],1),sumleq(ws["?id",_],0)})" crlf)
        )
	;(printout ?*minion_fp* " watched-or({ eq(ws["?wid","?sid"],1),sumleq(ws[_,"?sid"],0)})" crlf)
)

;(defrule print_pot_fact_for_restricted_words
;(declare (salience 929))
;(fact_name-word_id-slot_id  eq_or_sumleq $?wids ?sid)
;(hindi_id_order $?hin_order)
;(id-word ?id ~is)
;(test (neq (member$ ?id $?hin_order) FALSE))
;(test (eq ?id (nth$ (+ ?sid 1) $?hin_order)))
;;?id2&:(=(+ ?id1 1)
;=>
;
;        (loop-for-count (?i 1 (length $?wids))
;                        (bind ?id (nth$ ?i $?wids))
;                        (printout ?*minion_fp* " watched-or( {eq(ws["?id","?sid"],1),sumleq(ws["?id",_],0)})" crlf)
;        )
;)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (16-08-12)
(defrule print_pot_fact_for_word1
(declare (salience 930))
;(fact_name-word_id-slot_id  sumleq ?wid ?sid)
(fact_name-word_id-slot_id  sumleq all_rows ?sid)
=>
        (printout ?*minion_fp* " sumleq(ws[_,"?sid"],0)" crlf)
)
;------------------------------------------------------------------------------------------------------------
;;Added by Shirisha Manju (23-08-12)
;;An incoming wave can be divided into two weaker waves at the boundary between air and water.
(defrule print_pot_fact_for_word2
(declare (salience 930))
(fact_name-word_id-slot_id  sumleq ?wid all_columns)
=>
        (printout ?*minion_fp* " sumleq(ws["?wid",_],0)" crlf)
	
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (22-08-12)
(defrule print_pot_fact_for_repeated_word
(declare (salience 925))
(repeated_id-word ?id ?w)
(man_id-candidate_slots_tmp  $?mids - $? ?id $?)
(manual_id-mng ?mid $?)
(test (eq (member$ ?mid $?mids) FALSE))
(hindi_id_order $?hin_order)
(test (neq (member$ ?id $?hin_order) FALSE))
=>
	(printout ?*minion_fp* " eq(ws["(- ?mid 1)","(- (member$ ?id $?hin_order) 1)"],0)" crlf)
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (23-08-12)
;The normal in this case is to be taken as normal to the tangent to surface at the point of incidence. 
(defrule print_pot_fact_for_repeated_word1
(declare (salience 921))
(repeated_id-word ?id ?w)
(not (man_id-candidate_slots  ?mid  $? ?id $?))
(not (man_id-candidate_slots_tmp  $?mids - $? ?id $?))
(hindi_id_order $?hin_order)
(test (neq (member$ ?id $?hin_order) FALSE))
=>
        (printout ?*minion_fp* " sumleq(ws[_,"(- (member$ ?id $?hin_order) 1)"],0)" crlf)
)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi
(defrule print_poten_constr_info
(declare (salience 920))
(print_constraint_info)
=>
        (printout ?*minion_fp* crlf crlf " #**PRINT POTENTIAL CONSTRAINTS** " crlf crlf)
)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi
(defrule print_potential_constraints1
(declare (salience 910))
(man_id-candidate_slots ?mid $?grp)
(hindi_id_order $?hin_order)
(test (neq (length $?grp) 0))
(not (ctrl_fact_for_poten_assignment ?mid $?))
=>
	(printout ?*minion_fp* " watched-or({" )
	(bind $?list (create$ ))
        (loop-for-count (?i 1 (length $?grp))
        	(bind ?slot_id (nth$ ?i $?grp))
		(if (neq (member$ ?slot_id $?hin_order) FALSE) then
			(bind $?list (create$ $?list (member$ ?slot_id $?hin_order)))
		)
        )
	
	(loop-for-count (?i 1 (length $?list))
			(bind ?id (nth$ ?i $?list))
			(printout ?*minion_fp* "eq(ws["(- ?mid 1)","(- ?id 1)"],1)")
			(if (neq ?i (length $?list)) then
                            (printout ?*minion_fp* ",")
                        )
	)
	(printout ?*minion_fp* ",sumleq(ws["(- ?mid 1)",_],0)})" crlf)
)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi
;(defrule print_potential_constraints2
;(declare (salience 910))
;(anu_id-candidate_words ?aid $?grp)
;(hindi_id_order $?hin_order)
;(test (neq (length $?grp) 0))
;(test (neq (member$ ?aid $?hin_order) FALSE))
;(not (ctrl_fact_for_poten_assignment ?aid $?))
;=>
;        (printout ?*minion_fp* " watched-or({" )
;	(bind ?sid (member$ ?aid $?hin_order))
;        (loop-for-count (?i 1 (length $?grp))
;                        (bind ?id (nth$ ?i $?grp))
;                        (printout ?*minion_fp* "eq(ws["(- ?id 1)","(- ?sid 1)"],1)")
;                        (if (neq ?i (length $?grp)) then
;                            (printout ?*minion_fp* ",")
;                        )
;        )
;        ;(printout ?*minion_fp* ",sumleq(ws[_,"(- ?sid 1)"],0)})" crlf)
;        (printout ?*minion_fp* "})" crlf)
;)

;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi
(defrule print_default_assignment
(declare (salience 900))
(manual_word_length ?manual_word_len)
(slot-length  ?anu_slot_len)
=>
        (printout ?*minion_fp* crlf crlf)
	(loop-for-count (?i 0 (- ?manual_word_len 1))
			(if (eq (member$ ?i ?*non_refiy_list*) FALSE)then
			(printout ?*minion_fp* " reify(sumgeq(ws["?i",_],1),r"?i")" crlf)
			else
			(printout ?*minion_fp* " sumgeq(ws["?i",_],1)" crlf)
			)
			;(printout ?*minion_fp* " sumgeq(ws["?i",_],1)" crlf)
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
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (20-08-12)
(defrule print_head_cost
(declare (salience 896))
(grp_hids-slot_ids-var_ids $?grp - $?sids - $?vids)
=>
	(printout ?*minion_fp* " #Generating cost facts for head ids " crlf)
        (printout ?*minion_fp* " #head_ids-slot_ids-var_ids "(implode$ $?grp)" --- " (implode$ $?sids) " --- "(implode$ $?vids) crlf)
        (loop-for-count (?i 1 (length $?sids))
                (bind ?sid (nth$ ?i $?sids))
                (bind ?vid (nth$ ?i $?vids))
                (printout ?*minion_fp* "	element(ws[_,"?sid"],"?vid",1)" crlf)
        )
	(printout ?*minion_fp* crlf)
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (20-08-12)
(defrule print_head_cost1
(declare (salience 895))
(hids-sids-slot1-slot2-total $? - $?sids - ?s1 - ?s2 - ?total)
=>
	(printout ?*minion_fp* "	watched-or({" crlf)
	(printout ?*minion_fp* "		watched-and({ ineq("?s1", "?s2", 0) , eq("?total",20) })," crlf)
	(printout ?*minion_fp* "		watched-and({ ineq("?s2", "?s1", 0) , eq("?total",0) })" )
	(printout ?*minion_fp* crlf "	})" crlf)
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (20-08-12)
(defrule print_cost
(declare (salience 890))
(get_cost_for_grp $?anu_grp - ?total)
(grp_ids-slot_ids $?anu_grp - $?grp)
(manual_word_length  ?manual_word_len)
(test (< (length $?grp) ?manual_word_len))
(test (neq (length $?grp) 0))
=>
        (printout ?*minion_fp*  crlf " #Generating cost facts " crlf)
        (printout ?*minion_fp*  " #group : "(implode$ $?anu_grp) " ---- " (implode$ $?grp) crlf)
        (printout ?*minion_fp* " watched-or({" crlf "    watched-and({ " crlf)
        (printout ?*minion_fp* "                watched-or({ ")
        (get_main_or_lower_diagonal ?manual_word_len main ?total $?grp)
        (if (> (length $?grp) 2) then
                (bind $?u_grp (subseq$ $?grp 2 (length $?grp)))
                (printout ?*minion_fp* "        watched-and({ "crlf "           watched-or({ " )
                (get_upper_diagonal ?manual_word_len ?total $?u_grp)
                (bind $?l_grp (subseq$ $?grp 1 (- (length $?grp) 1)))
                (printout ?*minion_fp* "        watched-and({ "crlf "           watched-or({ " )
                (get_main_or_lower_diagonal ?manual_word_len lower ?total $?l_grp)
        )
        (printout ?*minion_fp* "        eq("?total",0) "crlf "     })" crlf)
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (27-07-12)
(defrule print_grp_info
(declare (salience 880))
?f0<-(grp_ids-slot_ids $?anu_grp - $?grp)
(manual_word_length  ?manual_word_len)
(test (< (length $?grp) ?manual_word_len))
(slot-length  ?anu_slot_len)
(test (neq (length $?grp) 0))
=>
        (printout ?*minion_fp* crlf " #group : "(implode$ $?anu_grp) " ---- " (implode$ $?grp))
        (printout ?*minion_fp*  crlf " watched-or({" crlf "                weightedsumgeq([")
        (print_weighted_values ?manual_word_len $?grp)
        (bind ?count 0)
        (loop-for-count (?k ?count (- ?manual_word_len 1) )
               (printout ?*minion_fp* "[")
               (loop-for-count (?i ?count (- (+ (length $?grp) ?count) 1))
                        (loop-for-count (?j 1 (length $?grp) )
                                (bind ?s_id (nth$ ?j $?grp))
                                (printout ?*minion_fp*  "ws["?i","?s_id "],")
                        )
                )
                (loop-for-count (?l 1 (length $?grp))
                        (bind ?s_id (nth$ ?l $?grp))
                        (printout ?*minion_fp* "ws[_,"?s_id "]")
                        (if (neq ?l (length $?grp)) then
                                (printout ?*minion_fp* ",")
                        )
                )
		(if (>= (+ ?k (length $?grp)) ?manual_word_len )  then
                        (printout ?*minion_fp* "],0)" crlf)
                        (break)
                else
                        (printout ?*minion_fp*  "],0)," crlf"              weightedsumgeq([" )
                        (print_weighted_values ?manual_word_len $?grp)
                 )
                 (bind ?count (+ ?count 1))
        )
        (printout ?*minion_fp*   crlf "})" crlf)
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (6-08-12)
(defrule get_sum_fact_for_total
(declare (salience 100))
(total_count ?total)
(manual_word_length ?manual_word_len)
(test (neq ?total 0))
=>
	(printout ?*minion_fp* crlf "	sumgeq([" )
       	(loop-for-count (?i 1 ?total)
        	(printout ?*minion_fp* "total" ?i)
                (if (neq ?i ?total) then
                	(printout ?*minion_fp* ",")
                )
        )
	(loop-for-count (?i 0 (- ?manual_word_len 1))
		(if (eq (member$ ?i ?*non_refiy_list*) FALSE) then
			(printout ?*minion_fp* ",r"?i))
      	)
	(printout ?*minion_fp*"],total)")
        (printout ?*minion_fp* crlf "	sumleq([" )
        (loop-for-count (?i 1 ?total)
  		(printout ?*minion_fp* "total" ?i)
                (if (neq ?i ?total) then
                        (printout ?*minion_fp* ",")
                )
        )
	(loop-for-count (?i 0 (- ?manual_word_len 1))
		(if (eq (member$ ?i ?*non_refiy_list*) FALSE) then
			(printout ?*minion_fp* ",r"?i))
      	)
	(printout ?*minion_fp*"],total)")

)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi
(defrule print_EOF_info
(declare (salience -100))
(print_constraint_info)
=>
        (printout ?*minion_fp* crlf  crlf " **EOF**" crlf)
)
;------------------------------------------------------------------------------------------------------------
