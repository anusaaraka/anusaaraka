;This file is written by Maha Laxmi and Shirisha Manju

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
;if same word is pointing to 2 slots then chech the word in the database for the 2 slots. If we got match then remove the another fact.
;This law was established by Galileo Galilei (1564-1642) who was the first to make quantitative studies of free fall.
(defrule remove_fact_if_one_word_pointing_to_2_slots
(declare (salience 1501))
?f0<-(fact_name-slot_id-word_ids eq_or_sumleq ?aid ?mid)
?f1<-(fact_name-slot_id-word_ids eq_or_sumleq ?aid1 ?mid)
(test (neq ?aid ?aid1))
(manual_id-mng ?mid $?mng)
(manual_id-cat-word-root-vib-grp_ids ? ? $?mng - $?root - $? - $?)
(id-org_wrd-root-dbase_name-mng ? ? ?rt ? $?root)
(id-root ?id ?rt)
(hindi_id_order $?ids)
(test (eq (member$ ?id $?ids) ?aid))
(not (multi_word_expression-grp_ids $? ?id $?))
=>
;        (if (eq (member$ ?id $?ids) ?aid) then
                (retract ?f1)
 ;       )
)
;------------------------------------------------------------------------------------------------------------
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
(not (hindi_id_order_tmp $?))
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
(not (hindi_id_order_tmp $?))
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
(defrule print_pot_info
(declare (salience 1301))
(fact_name-man_id-slot_ids  ?fact_name ?mid $?sids)
=>
	(bind $?g_list (create$))
	(loop-for-count (?i 1 (length $?sids))
                (bind ?id (nth$ ?i $?sids))
		(bind $?g_list (sort > (create$ $?g_list (- ?id 1))))
	)
	(printout ?*minion_fp* "	# row_id-slot_ids " (- ?mid 1) " --- " (implode$ $?g_list) crlf)        
)
;------------------------------------------------------------------------------------------------------------
(defrule print_pot_info1
(declare (salience 1300))
(fact_name-slot_id-word_ids  ?fact_name ?aid $?wids)
=>
        (bind $?g_list (create$))
        (loop-for-count (?i 1 (length $?wids))
                (bind ?id (nth$ ?i $?wids))
                (bind $?g_list (sort > (create$ $?g_list (- ?id 1))))
        )
        (printout ?*minion_fp* "        # slot_id-row_ids " (- ?aid 1 ) " ---- " (implode$ $?g_list) crlf)     
)
;------------------------------------------------------------------------------------------------------------
(defrule print_null_slot_info
(declare (salience 1260))
(fact_name-slot_id sumleq ?sid)
=>
	(printout ?*minion_fp* "	# NULL slot :: " (- ?sid 1) crlf)
)
;------------------------------------------------------------------------------------------------------------
(defrule print_null_word_info
(declare (salience 1260))
(fact_name-word_id sumleq ?wid)
=>
	(printout ?*minion_fp* "	# NULL word :: " (- ?wid 1) crlf)

)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi
(defrule print_array
(declare (salience 1200))
(manual_word_length ?manual_word_len)
(slot-length  ?anu_slot_len)
(hindi_id_order $?hin_order)
(Eng_sen $?sen)
(not (hindi_id_order_tmp $?))
=>
	(printout ?*minion_fp* " MINION 3" crlf crlf)
	(printout ?*minion_fp* " **VARIABLES**" crlf)
 	(printout ?*minion_fp* " DISCRETE ws["?manual_word_len","?anu_slot_len"] {0..1}" crlf  )
	(loop-for-count (?i 0 (- ?manual_word_len 1))
		(printout ?*minion_fp* " DISCRETE r"?i" {0..50}" crlf)
	)
	(assert (print_constraint_info))
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (07-01-13)
(defrule get_total_for_consecutive_ids
(declare (salience 1150))
?f<-(total_count ?t_count)
(slot-length  ?anu_slot_len)
(not (modified_total))
(hindi_id_order $?hin_order)
=>
	(retract ?f)
	(assert (total_count1 ?t_count))
	(bind ?t_count (+ ?t_count (- ?anu_slot_len 1)))
	(assert (total_count ?t_count))
	(assert (modified_total))
	(assert (hindi_id_order_tmp $?hin_order))
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
(manual_word_length ?manual_word_len)
=>
	(printout ?*minion_fp* " DISCRETE total{0.."10000"} " crlf crlf)
        (printout ?*minion_fp* " **SEARCH**" crlf)
        (printout ?*minion_fp* " #MAXIMISING " crlf)
        (printout ?*minion_fp* " MAXIMISING total" crlf crlf)
        (printout ?*minion_fp* " **CONSTRAINTS** " crlf crlf)
)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi
(defrule print_poten_constr_info
(declare (salience 970))
(print_constraint_info)
=>
        (printout ?*minion_fp* crlf crlf " #**PRINT POTENTIAL CONSTRAINTS** " crlf crlf)
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (16-08-12)
(defrule print_pot_fact_for_slot
(declare (salience 960))
(fact_name-slot_id sumleq ?sid)
=>
        (printout ?*minion_fp* " sumleq(ws[_,"(- ?sid 1)"],0)" crlf)
)
;------------------------------------------------------------------------------------------------------------
;;Added by Shirisha Manju (23-08-12)
;;An incoming wave can be divided into two weaker waves at the boundary between air and water.
(defrule print_pot_fact_for_word
(declare (salience 960))
(fact_name-word_id sumleq ?wid)
=>
        (printout ?*minion_fp* " sumleq(ws["(- ?wid 1)",_],0)" crlf)

)
;------------------------------------------------------------------------------------------------------------
(defrule print_pot_fact_for_word1
(declare (salience 930))
(fact_name-man_id-slot_ids  ?fact_name ?mid $?sids)
(test (neq (length $?sids) 0));The intuitive notion that light travels in a straight line seems to contradict what we have learned in Chapter 8, that light is an electromagnetic wave of wavelength belonging to the visible part of the spectrum.
=>
	(printout ?*minion_fp* " watched-or({" )
        (loop-for-count (?i 1 (length $?sids))
                        (bind ?sid (nth$ ?i $?sids))
                        (printout ?*minion_fp* "eq(ws["(- ?mid 1)","(- ?sid 1)"],1)")
			(if (neq ?i (length $?sids)) then
				(printout ?*minion_fp* ",")
			)

        )
	(if (eq ?fact_name restricted_eq_or_sumleq) then
		(printout ?*minion_fp* ",sumleq(ws["(- ?mid 1)",_],0)})" crlf)
	else
		(printout ?*minion_fp* "})" crlf)
	)

)
;------------------------------------------------------------------------------------------------------------
;To describe the rate of motion over the actual path, we introduce another quantity called average speed.
(defrule print_pot_fact_for_slot1
(declare (salience 930))
(fact_name-slot_id-word_ids  ?fact_name ?sid $?wids)
(test (neq (length $?wids) 0))
=>
        (printout ?*minion_fp* " watched-or({" )
        (loop-for-count (?i 1 (length $?wids))
                        (bind ?mid (nth$ ?i $?wids))
                        (printout ?*minion_fp* "eq(ws["(- ?mid 1)","(- ?sid 1)"],1)")
                        (if (neq ?i (length $?wids)) then
                                (printout ?*minion_fp* ",")
                        )
        )
        (if (eq ?fact_name restricted_eq_or_sumleq) then
                (printout ?*minion_fp* ",sumleq(ws[_,"(- ?sid 1)"],0)})" crlf)
        else
                (printout ?*minion_fp* "})" crlf)
        )
)
;------------------------------------------------------------------------------------------------------------
(defrule print_def_info
(declare (salience 920))
=>
	(printout ?*minion_fp* crlf crlf " #**DEFAULT ASSIGNMENT** " crlf)
)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi
(defrule print_default_assignment
(declare (salience 900))
(manual_word_length ?manual_word_len)
(slot-length  ?anu_slot_len)
=>
	(loop-for-count (?i 0 (- ?manual_word_len 1))
			(printout ?*minion_fp* " watched-or({ " crlf)
                       	(printout ?*minion_fp* "	watched-and({sumgeq(ws["?i",_],1),eq(r"?i",50)})," crlf)
                      	(printout ?*minion_fp* "	watched-and({sumleq(ws["?i",_],0),eq(r"?i",0)})" crlf)
             		(printout ?*minion_fp* " })" crlf)
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
;Added by Shirisha Manju (2-01-13)
(defrule print_cost_for_consecutive_ids
(declare (salience 885))
(manual_word_length  ?manual_word_len)
(hindi_id_order_tmp $?ids)
?f<-(hindi_id_order ?id ?id1 $?d)
?f0<-(total_count1 ?t_count)
=>
	(retract ?f ?f0)
	(bind ?total (string-to-field (str-cat total (+ ?t_count 1))))
        (bind ?pos (- (member$ ?id $?ids) 1))
        (bind ?pos1 (- (member$ ?id1 $?ids) 1))
	(bind $?l_grp (create$ ?pos ?pos1))
	(printout ?*minion_fp*  crlf " #Generating cost facts " crlf)
	(printout ?*minion_fp*  " #group : "?id" "?id1 " ---- " (implode$ $?l_grp) crlf)
	(printout ?*minion_fp* " watched-or({" crlf "	watched-and({ " )
	(bind ?count 0)
        (loop-for-count (?k ?count (- ?manual_word_len 1) )
		(bind ?row ?k)
		(loop-for-count (?i 1 (length $?l_grp)  )
                	(bind ?s_id (nth$ ?i $?l_grp))
                       	(printout ?*minion_fp*  "	eq(ws["?row","?s_id "],1)," )
                	(bind ?row (+ ?row 1))
        	)
        	(bind ?new_row ?row)
		(if (>= (+ ?k (length $?l_grp)) ?manual_word_len )  then
                        (break)
                )
		(printout ?*minion_fp* "	eq("?total",30) })," crlf)
		(printout ?*minion_fp* "        watched-and({"       )
                (bind ?count (+ ?count 1))
        )
	(printout ?*minion_fp* "	eq("?total",30) })," crlf)
	(printout ?*minion_fp* "        eq("?total",0) "crlf "     })" crlf)
	(assert (hindi_id_order ?id1 $?d))
	(assert (total_count1 (+ ?t_count 1)))
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
			(printout ?*minion_fp* ",r"?i	)
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
			(printout ?*minion_fp* ",r"?i)
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
