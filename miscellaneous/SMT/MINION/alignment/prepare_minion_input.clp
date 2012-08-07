;This file is written by Maha Laxmi and Shirisha Manju

(defglobal ?*total_count* = 0)
(defglobal ?*minion_fp*  = minion_fp)

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
;============================================================================================================
;Added by Maha Laxmi
(defrule potential_count_of_manual_verb_id
(declare (salience 2000))
(man_verb_count-verbs ?man_verb_count $? ?man_verb $?)
(anu_verb_count-verbs ?anu_verb_count $?anu_verbs)
(manual_id-mapped_id ?man_verb ?mapped_id)
(not (man_id-candidate_slots ?mapped_id $?))
=>
        (assert (man_id-candidate_slots ?mapped_id $?anu_verbs))
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
=>
	(bind $?g_list (create$))
	(loop-for-count (?i 1 (length $?grp))
                (bind ?id (nth$ ?i $?grp))
                (bind ?pos (member$ ?id $?ids))
		(if (neq ?pos FALSE) then
                	(bind $?g_list (sort > (create$ $?g_list (- ?pos 1))))
		)
        )
	(if (eq (length $?g_list) 0) then
		(retract ?f)
		(assert (ctrl_fact_for_poten_assignment ?mid $?grp))
	else	    
	(printout ?*minion_fp* "        # man_w_id-anu_ids " ?mid " ---- " (implode$ $?grp))
        (printout ?*minion_fp* "   ==> " (- ?mid 1) " ---- " )
	(printout ?*minion_fp* (implode$ $?g_list) crlf))
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
	(assert (print_constraint_info))
)
;----------------------------------------  Get group info ---------------------------------------------------
;Added by Shirisha Manju
(defrule rm_prep_id_from_prawiniXi
(declare (salience 1100))
?f0<-(mot-cat-praW_id-largest_group ?m ?c ?p_id $?d ?id $?d1)
(id-cat_coarse ?id preposition)
(not (id-cat_coarse =(+ ?id 1) verb))
=>
        (retract ?f0)
        (assert (mot-cat-praW_id-largest_group ?m ?c ?p_id $?d $?d1))
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
(defrule sort_conj_ids
(declare (salience 1000))
(conj_head-components $?ids)
=>
        (bind ?g_ids (sort > ?ids))
        (assert (conj_components ?g_ids))
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
(defrule get_prawiniXi_grp_info
(declare (salience 990))
(mot-cat-praW_id-largest_group ? ? ? $?grp)
;(or (mot-cat-praW_id-largest_group ? ? ? $?grp) (conj_components $?grp))
(hindi_id_order $?ids)
(test (> (length $?grp) 1))
=>
        (bind $?g_list (create$))
        (loop-for-count (?i 1 (length $?grp))
                (bind ?id (nth$ ?i $?grp))
                (bind ?pos (member$ ?id $?ids))
                (if (neq ?pos FALSE) then
                        (bind $?g_list (create$ $?g_list (- ?pos 1)))
                )
        )
        (assert (grp_ids-slot_ids $?grp - $?g_list))
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
(defrule get_grp_info
(declare (salience 980))
(or (pada_info (group_head_id ?id)(group_cat PP)(group_ids $?grp)) (conj_components $?grp))
(test (> (length $?grp) 1))
(hindi_id_order $?ids)
(not (grp_ids-slot_ids $?grp - $?))
=>
        (bind ?*total_count* (+ ?*total_count* 1))
        (bind $?g_list (create$))
        (loop-for-count (?i 1 (length $?grp))
                (bind ?id (nth$ ?i $?grp))
                (bind ?pos (member$ ?id $?ids))
                (if (neq ?pos FALSE) then
                        (bind $?g_list (create$ $?g_list (- ?pos 1)))
                )
        )
        (assert (grp_ids-slot_ids $?grp - $?g_list))
        (assert (get_cost_for_grp $?grp - ?*total_count*))
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (6-08-12)
(defrule print_cost_constraints
(declare (salience 970))
(get_cost_for_grp $?grp - ?t_val)
(not (t_val_assigned ?t_val))
=>
	(bind ?total (str-cat "total" ?t_val ))
	(printout ?*minion_fp* " DISCRETE "?total "{0..100} " crlf)
	(assert (t_val_assigned ?t_val))
)	
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (3-08-12)
(defrule print_cost_constraints1
(declare (salience 960))
(print_constraint_info)
=>
	(printout ?*minion_fp* " DISCRETE total{0.."?*total_count*"00} " crlf crlf) 
        (printout ?*minion_fp* " **SEARCH**" crlf) 
        (printout ?*minion_fp* " #MAXIMISING " crlf)
        (printout ?*minion_fp* " MAXIMISING total" crlf crlf)
)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi
(defrule print_constraints
(declare (salience 950))
(print_constraint_info)
=>
        (printout ?*minion_fp* " **CONSTRAINTS** " crlf crlf)
)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi
(defrule print_dictionary_constarints
(declare (salience 940))
(anu_id-anu_mng-sep-man_id-man_mng ?aid $? - ?mid $?)
(hindi_id_order $?hin_order)
(manual_id-mapped_id ?mid ?mapped_id)
=>
	(printout ?*minion_fp* " eq(ws["(- ?mapped_id 1)","(- (member$ ?aid $?hin_order) 1)"],1)" crlf)
)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi
(defrule potential_facts_for_article_the
(declare (salience 930))
(id-word ?aid the)
(manual_id-mng ?mapped_id vaha|isa|usa)
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE)) 
=>
        (printout ?*minion_fp* " watched-or({ eq(ws["(- ?mapped_id 1)","(- (member$ ?aid $?hin_order) 1)"],1),sumleq(ws[_,"(- (member$ ?aid $?hin_order) 1)"],0)})" crlf)
)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi
(defrule potential_facts_for_article_the1
(declare (salience 930))
(id-word ?aid the)
(not (manual_id-mng ?mid vaha|isa|usa))
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE))
=>
        (printout ?*minion_fp* " sumleq(ws[_,"(- (member$ ?aid $?hin_order) 1)"],0)" crlf)
)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi
(defrule potential_facts_for_article_a_and_an
(declare (salience 930))
(id-word ?aid a|an)
(manual_id-mng ?mapped_id eka|koI)
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE))
=>
        (printout ?*minion_fp* " watched-or({ eq(ws["(- ?mapped_id 1)","(- (member$ ?aid $?hin_order) 1)"],1),sumleq(ws[_,"(- (member$ ?aid $?hin_order) 1)"],0)})" crlf)
)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi
(defrule potential_facts_for_article_a_and_an1
(declare (salience 930))
(id-word ?aid a|an)
(not (manual_id-mng ?mid eka|koI))
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE))
=>
	(printout ?*minion_fp* " sumleq(ws[_,"(- (member$ ?aid $?hin_order) 1)"],0)" crlf)
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (30-07-12)
;Physicists try to discover the rules that are operating in nature, on the basis of observations, experimentation and analysis.
(defrule potential_facts_for_that
(declare (salience 930))
(id-word ?aid that)
(manual_id-mng ?mapped_id jo|isa|yaha|vaha|usa)
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE))
=>
	(printout ?*minion_fp* " watched-or({ eq(ws["(- ?mapped_id 1)","(- (member$ ?aid $?hin_order) 1)"],1),sumleq(ws[_,"(- (member$ ?aid $?hin_order) 1)"],0)})" crlf)
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (30-07-12)
(defrule potential_facts_for_that1
(declare (salience 930))
(id-word ?aid that)
(not (manual_id-mng ?mid jo|isa|yaha|vaha|usa))
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE))
=>
	(printout ?*minion_fp* " sumleq(ws[_,"(- (member$ ?aid $?hin_order) 1)"],0)" crlf)
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (02-08-12)
(defrule potential_facts_for_there
(declare (salience 930))
(id-word ?aid there)
(manual_id-mng ?mapped_id vahAz|vaha)
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE))
=>
        (printout ?*minion_fp* " watched-or({ eq(ws["(- ?mapped_id 1)","(- (member$ ?aid $?hin_order) 1)"],1),sumleq(ws[_,"(- (member$ ?aid $?hin_order) 1)"],0)})" crlf)
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (02-08-12)
;There are also forces involving charged and magnetic bodies. 
(defrule potential_facts_for_there1
(declare (salience 930))
(id-word ?aid there)
(not (manual_id-mng ?mid vaha|vahAz))
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE))
=>
        (printout ?*minion_fp* " sumleq(ws[_,"(- (member$ ?aid $?hin_order) 1)"],0)" crlf)
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
=>
	(printout ?*minion_fp* " watched-or({" )
        (loop-for-count (?i 1 (length $?grp))
        	(bind ?slot_id (nth$ ?i $?grp))
		(if (neq (member$ ?slot_id $?hin_order) FALSE) then
                	(printout ?*minion_fp* "eq(ws["(- ?mid 1)","(- (member$ ?slot_id $?hin_order) 1)"],1)")
                        (if (neq ?i (length $?grp)) then
                            (printout ?*minion_fp* ",")
			)
		)
        )
	(printout ?*minion_fp* "})" crlf)
)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi
(defrule print_default_assignment
(declare (salience 900))
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
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (03-08-12)
(defrule print_cost
(declare (salience 890))
(get_cost_for_grp $?anu_grp - ?total)
(grp_ids-slot_ids $?anu_grp - $?grp)
(manual_word_length  ?manual_word_len)
(test (< (length $?grp) ?manual_word_len))
=>
        (bind ?total (str-cat "total" ?total))
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
(defrule get_sum_fact_for_total
(declare (salience 100))
(print_constraint_info)
=>
	(if (neq ?*total_count* 0) then
        	(printout ?*minion_fp* crlf "	sumgeq([" )
        	(loop-for-count (?i 1 ?*total_count*)
                	(printout ?*minion_fp* "total" ?i)
                	(if (neq ?i ?*total_count*) then
                        	(printout ?*minion_fp* ",")
                	else
                        	(printout ?*minion_fp* "],total)" )
                	)
        	)
        	(printout ?*minion_fp* crlf "	sumleq([" )
        	(loop-for-count (?i 1 ?*total_count*)
                	(printout ?*minion_fp* "total" ?i)
                	(if (neq ?i ?*total_count*) then
                        	(printout ?*minion_fp* ",")
                	else
                        	(printout ?*minion_fp* "],total)" )
                	)
        	)
	)
)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi
(defrule print_EOF_info
(declare (salience -100))
(print_constraint_info)
=>
        (printout ?*minion_fp* crlf  crlf " **EOF**" crlf)
)




;;Added by Shirisha Manju
;(defrule rm_prep_id_from_prawiniXi
;(declare (salience 950))
;?f0<-(mot-cat-praW_id-largest_group ?m ?c ?p_id $?d ?id $?d1)
;(id-cat_coarse ?id preposition)
;(not (id-cat_coarse =(+ ?id 1) verb))
;=>
;	(retract ?f0)
;	(assert (mot-cat-praW_id-largest_group ?m ?c ?p_id $?d $?d1))
;)
;;------------------------------------------------------------------------------------------------------------
;;Added by Shirisha Manju
;(defrule sort_conj_ids
;(declare (salience 940))
;(conj_head-components $?ids)
;=>
;        (bind ?g_ids (sort > ?ids))
;        (assert (conj_components ?g_ids))
;)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
;(defrule get_prawiniXi_grp_info
;(declare (salience 930))
;(or (mot-cat-praW_id-largest_group ? ? ? $?grp) (conj_components $?grp))
;(hindi_id_order $?ids)
;(test (> (length $?grp) 1))
;=>
;        (bind $?g_list (create$))
;        (loop-for-count (?i 1 (length $?grp))
;                (bind ?id (nth$ ?i $?grp))
;                (bind ?pos (member$ ?id $?ids))
;		(if (neq ?pos FALSE) then
;			(bind $?g_list (create$ $?g_list (- ?pos 1)))
;		)
;        )
;        (assert (grp_ids-slot_ids $?grp - $?g_list))
;)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (03-08-12)
;(deffunction get_or_facts (?index $?grp)
;	(bind ?row ?index)
;        (loop-for-count (?i 1 (length $?grp)  )
;        	(bind ?s_id (nth$ ?i $?grp))
;                (if (eq ?i (length $?grp) ) then
;                	(printout ?*minion_fp*  "eq(ws["?row","?s_id "],1), sumleq(ws[_,"?s_id"],0) })," crlf )
;                else
;                	(printout ?*minion_fp*  "eq(ws["?row","?s_id "],1), sumleq(ws[_,"?s_id"],0) })," crlf )
;                        (printout ?*minion_fp* "                watched-or({ ")
;                )
;                (bind ?row (+ ?row 1))
;        )
;	(bind ?new_row ?row)
;)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (03-08-12)
;(deffunction get_main_or_lower_diagonal(?manual_word_len ?type ?total $?grp)
;        (bind ?count 0)
;        (loop-for-count (?k ?count (- ?manual_word_len 1) )
;		(get_or_facts ?k $?grp)
;                (if (>= (+ ?k (length $?grp)) ?manual_word_len )  then
;                        (break)
;                )
;		(printout t ?total crlf)
;	;	(printout t ?type crlf)
;		(if (eq ?type main) then
;			(printout ?*minion_fp* "		eq("?total",40)" crlf "		}), " crlf)
;;			(printout ?*minion_fp* "		eq(total,40)" crlf "		}), " crlf)
;		else
;			(printout ?*minion_fp* "		eq("?total",30)" crlf "		}), " crlf)
;;			(printout ?*minion_fp* "		eq(total,30)" crlf "		}), " crlf)
;		)
;		(printout ?*minion_fp* "	watched-and({"        crlf)
;                (printout ?*minion_fp* "		watched-or({ ")
;		(bind ?count (+ ?count 1))
;        )
;	(if (eq ?type main) then
;;		(printout ?*minion_fp* "		eq(total,40)" crlf"		})," crlf)
;		(printout ?*minion_fp* "		eq("?total",40)" crlf"		})," crlf)
;	else
;;		(printout ?*minion_fp* "		eq(total,30)" crlf"		})," crlf)
;		(printout ?*minion_fp* "		eq("?total",30)" crlf"		})," crlf)
;	)
;)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (03-08-12)
;(deffunction get_upper_diagonal(?manual_word_len ?total $?grp)
;        (bind ?count 0)
;        (loop-for-count (?k ?count (- ?manual_word_len 1) )
;		(get_or_facts ?k $?grp)
;                (if (>= (+ ?k (length $?grp)) (- ?manual_word_len 1))  then 
;                        (break) 
;                )       
;                (printout ?*minion_fp* "                eq("?total",30)" crlf "		}), " crlf)
;                ;(printout ?*minion_fp* "                eq(total,30)" crlf "		}), " crlf)
;                (printout ?*minion_fp* "        watched-and({"        crlf)
;                (printout ?*minion_fp* "		watched-or({ ")
;                (bind ?count (+ ?count 1))
;        )
;        (printout ?*minion_fp* "                eq("?total",30)" crlf"		})," crlf)
;;        (printout ?*minion_fp* "                eq(total,30)" crlf"		})," crlf)
;)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (03-08-12)
;(defrule print_cost
;(declare (salience 920))
;(declare (salience 850))
;(grp_ids-slot_ids $?anu_grp - $?grp)
;(manual_word_length  ?manual_word_len)
;(test (< (length $?grp) ?manual_word_len))
;=>
;	(printout ?*minion_fp*  crlf " #Generating cost facts " crlf)
;	(printout ?*minion_fp*  " #group : "(implode$ $?anu_grp) " ---- " (implode$ $?grp) crlf)
;	(printout ?*minion_fp* "watched-or({" crlf "	watched-and({ " crlf)
;	(printout ?*minion_fp* "		watched-or({ ")
;        (get_main_or_lower_diagonal ?manual_word_len main $?grp)
;	(if (> (length $?grp) 2) then
;		(bind $?u_grp (subseq$ $?grp 2 (length $?grp)))
;        	(printout ?*minion_fp* "	watched-and({ "crlf "		watched-or({ " )
;        	(get_upper_diagonal ?manual_word_len $?u_grp)
;		(bind $?l_grp (subseq$ $?grp 1 (- (length $?grp) 1)))
;		(printout ?*minion_fp* "	watched-and({ "crlf "		watched-or({ " )
; 		(get_main_or_lower_diagonal ?manual_word_len lower $?l_grp)
;	)
;	(printout ?*minion_fp* "        eq(total,0) "crlf "     })" crlf)
;)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju(27-07-12)
;(deffunction print_weighted_values (?manual_word_len $?grp)
;	(bind ?plus_ones (* (length $?grp) (length $?grp)))
;	(bind ?minus_ones (* (length $?grp) ?manual_word_len))
;	(loop-for-count (?i 1 ?plus_ones)
;                (printout ?*minion_fp*  "1,")
;        )
;        (loop-for-count (?i 1 ?minus_ones)
;                (printout ?*minion_fp* "-1" )
;                (if (neq ?i ?minus_ones) then
;                        (printout ?*minion_fp* "," )
;                else
;                        (printout ?*minion_fp* "],")
;                )
;        )
;)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (27-07-12)
;(defrule print_grp_info
;(declare (salience 910))
;?f0<-(grp_ids-slot_ids $?anu_grp - $?grp)
;(manual_word_length  ?manual_word_len)
;(test (< (length $?grp) ?manual_word_len))
;(slot-length  ?anu_slot_len)
;(test (neq (length $?grp) 0))
;=>
;        (printout ?*minion_fp* crlf " #group : "(implode$ $?anu_grp) " ---- " (implode$ $?grp))
;        (printout ?*minion_fp*  crlf " watched-or({" crlf "                weightedsumgeq([")
;;	(printout t ?manual_word_len " " (length $?grp) " " ?diff "---" crlf)
;	(print_weighted_values ?manual_word_len $?grp)
;        (bind ?count 0)
;	(loop-for-count (?k ?count (- ?manual_word_len 1) )
;               (printout ?*minion_fp* "[")
;               (loop-for-count (?i ?count (- (+ (length $?grp) ?count) 1))
;                        (loop-for-count (?j 1 (length $?grp) )
;                                (bind ?s_id (nth$ ?j $?grp))
;                                (printout ?*minion_fp*  "ws["?i","?s_id "],")
;                        )
;                )
;                (loop-for-count (?l 1 (length $?grp))
;                        (bind ?s_id (nth$ ?l $?grp))
;                        (printout ?*minion_fp* "ws[_,"?s_id "]")
;                        (if (neq ?l (length $?grp)) then
;                                (printout ?*minion_fp* ",")
;                        )
;                )
;		(if (>= (+ ?k (length $?grp)) ?manual_word_len )  then
;                	(printout ?*minion_fp* "],0)" crlf)
;                        (break)
;                else
;                	(printout ?*minion_fp*  "],0)," crlf"              weightedsumgeq([" )
;			(print_weighted_values ?manual_word_len $?grp)
;                 )
;                 (bind ?count (+ ?count 1))
;        )
;        (printout ?*minion_fp*   crlf "})" crlf)
;)
;;------------------------------------------------------------------------------------------------------------
;;Added by Shirisha Manju
;(defrule get_grp_info
;(declare (salience 994))
;;(declare (salience 900))
;(pada_info (group_head_id ?id)(group_cat PP)(group_ids $?grp))
;(test (> (length $?grp) 1))
;(hindi_id_order $?ids)
;(not (grp_ids-slot_ids $?grp - $?))
;=>
;	(bind ?*total_count* (+ ?*total_count* 1))
;        (bind $?g_list (create$))
;        (loop-for-count (?i 1 (length $?grp))
;                (bind ?id (nth$ ?i $?grp))
;                (bind ?pos (member$ ?id $?ids))
;		(if (neq ?pos FALSE) then
;			(bind $?g_list (create$ $?g_list (- ?pos 1)))
;		)
;        )
;        (assert (grp_ids-slot_ids $?grp - $?g_list))
;	(assert (get_cost_for_grp $?grp - ?*total_count*))
;)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (03-08-12)
;(defrule print_cost
;(declare (salience 920))
;(get_cost_for_grp $?anu_grp - ?total)
;;(get_cost_for_grp $?anu_grp)
;(grp_ids-slot_ids $?anu_grp - $?grp)
;(manual_word_length  ?manual_word_len)
;(test (< (length $?grp) ?manual_word_len))
;=>
;;	(bind ?*total_count* (+ ?*total_count* 1))
;	(bind ?total (str-cat "total" ?total))
;        (printout ?*minion_fp*  crlf " #Generating cost facts " crlf)
;        (printout ?*minion_fp*  " #group : "(implode$ $?anu_grp) " ---- " (implode$ $?grp) crlf)
;        (printout ?*minion_fp* " watched-or({" crlf "    watched-and({ " crlf)
;        (printout ?*minion_fp* "                watched-or({ ")
;        (get_main_or_lower_diagonal ?manual_word_len main ?total $?grp)
;        (if (> (length $?grp) 2) then
;                (bind $?u_grp (subseq$ $?grp 2 (length $?grp)))
;                (printout ?*minion_fp* "        watched-and({ "crlf "           watched-or({ " )
;                (get_upper_diagonal ?manual_word_len ?total $?u_grp)
;                (bind $?l_grp (subseq$ $?grp 1 (- (length $?grp) 1)))
;                (printout ?*minion_fp* "        watched-and({ "crlf "           watched-or({ " )
;                (get_main_or_lower_diagonal ?manual_word_len lower ?total $?l_grp)
;        )
;;        (printout ?*minion_fp* "        eq(total,0) "crlf "     })" crlf)
;        (printout ?*minion_fp* "        eq("?total",0) "crlf "     })" crlf)
;)
;------------------------------------------------------------------------------------------------------------
;(defrule get_sum_fact_for_total
;(declare (salience 100))
;(print_constraint_info)
;=>
;	(printout ?*minion_fp* crlf "sumgeq([" )
;	(loop-for-count (?i 1 ?*total_count*)
;		(printout ?*minion_fp* "total" ?i)
;		(if (neq ?i ?*total_count*) then
;			(printout ?*minion_fp* ",")
;		else	
;			(printout ?*minion_fp* "],total)" )
;		)
;	)
;	(printout ?*minion_fp* crlf "sumleq([" )
;	(loop-for-count (?i 1 ?*total_count*)
;                (printout ?*minion_fp* "total" ?i)
;                (if (neq ?i ?*total_count*) then
;                        (printout ?*minion_fp* ",")
;                else
;                        (printout ?*minion_fp* "],total)" )
;                )
;        )
;)


;Added by Maha Laxmi
;(defrule print_EOF_info
;(declare (salience -100))
;(print_constraint_info)
;=>
;	(printout ?*minion_fp* crlf  crlf " **EOF**" crlf)
;)
