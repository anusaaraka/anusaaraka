;This file is written by Maha Laxmi and Shirisha Manju


(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

(defglobal ?*minion_fp*  = minion_fp)

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

;Added by Maha Laxmi
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
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi
(defrule potential_count_of_manual_id1
(declare (salience 2000))
(potential_assignment_vacancy_id-candidate_id ?aid ?mid)
?f<-(man_id-candidate_slots ?mapped_id $?mem)
(manual_id-mapped_id ?mid ?mapped_id)
(test (eq (member$ ?aid $?mem) FALSE))
=>
        (retract ?f)
	(bind $?mem (sort > (create$ $?mem ?aid))) ;Added by Shirisha Manju
        (assert (man_id-candidate_slots ?mapped_id $?mem))
)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi
(defrule manul_word_count
(declare (salience 1000))
(manual_id-mng ?mid $?)
(not (manual_id-mng ?mid1&:(< ?mid ?mid1) $?))
=>
	(assert (manual_word_length ?mid))
)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi
(defrule find_slot_length
(declare (salience 1000))
(hindi_id_order $?hin_order)
=>
	(assert (slot-length (length$ $?hin_order)))
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
(defrule print_sen_info
(declare (salience 999))
(hindi_id_order $?hin_order)
(Eng_sen $?sen)
=>
	(printout ?*minion_fp* " # Sen		: " (implode$ $?sen) crlf )
	(printout ?*minion_fp* " # Order	: " (implode$ $?hin_order) crlf)
	(printout ?*minion_fp* " # Slot_order	:" )
	(loop-for-count (?i 0 (- (length $?hin_order) 1))
		(printout ?*minion_fp*   ?i " " )
	)
	(printout ?*minion_fp* crlf " # potential facts : " crlf) 
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
(defrule print_pot_info
(declare (salience 998))
(man_id-candidate_slots ?mid $?grp)
(hindi_id_order $?ids)
=>
        (printout ?*minion_fp* "	# man_w_id-anu_ids " ?mid " ---- " (implode$ $?grp))
	(printout ?*minion_fp* "   ==> " (- ?mid 1) " ---- " )
	(bind $?g_list (create$))
	(loop-for-count (?i 1 (length $?grp))
                (bind ?id (nth$ ?i $?grp))
                (bind ?pos (member$ ?id $?ids))
                (bind $?g_list (sort > (create$ $?g_list (- ?pos 1))))
        )
	(printout ?*minion_fp* (implode$ $?g_list) crlf)
)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi
(defrule print_array
(declare (salience 995))
(manual_word_length ?manual_word_len)
(slot-length  ?anu_slot_len)
(hindi_id_order $?hin_order)
(Eng_sen $?sen)
=>
	(printout ?*minion_fp* " MINION 3" crlf crlf)
	(printout ?*minion_fp* " **VARIABLES**" crlf)
 	(printout ?*minion_fp* " DISCRETE ws["?manual_word_len","?anu_slot_len"] {0..1}" crlf crlf)
	(assert (print_constraint_info))
)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi
(defrule print_constraints
(declare (salience 990))
(print_constraint_info)
=>
        (printout ?*minion_fp* " **CONSTRAINTS** " crlf crlf)
)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi
(defrule print_dictionary_constarints
(declare (salience 980))
(anu_id-anu_mng-sep-man_id-man_mng ?aid $? - ?mid $?)
(hindi_id_order $?hin_order)
(manual_id-mapped_id ?mid ?mapped_id)
=>
	(printout ?*minion_fp* " eq(ws["(- ?mapped_id 1)","(- (member$ ?aid $?hin_order) 1)"],1)" crlf)
)
;------------------------------------------------------------------------------------------------------------
;(defrule potential_facts_for_article_the
;(declare (salience 975))
;(id-word ?aid the)
;(manual_hin_sen $?man_sen)
;(test (and (eq (member$ isa $?man_sen) FALSE)(eq (member$ vaha $?man_sen) FALSE)))
;;(test (eq (member$ vaha $?man_sen) FALSE))
;(manual_word_length ?man_word_len)
;(hindi_id_order $?hin_order)
;(test (neq (member$ ?aid $?hin_order) FALSE)) 
;=>
;	(loop-for-count(?i 0 (- ?man_word_len 1))
;  			(printout ?*minion_fp* " eq(ws["?i","(- (member$ ?aid $?hin_order) 1)"],0)" crlf)
;	)
;)

(defrule potential_facts_for_article_the
(declare (salience 975))
(id-word ?aid the)
(manual_id-mng ?mid vaha|isa|usa)
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE)) 
(manual_id-mapped_id ?mid ?mapped_id)
=>
                   ;    (printout ?*minion_fp* " eq(ws["?i","(- (member$ ?aid $?hin_order) 1)"],0)" crlf)
                       (printout ?*minion_fp* " watched-or({ eq(ws["(- ?mapped_id 1)","(- (member$ ?aid $?hin_order) 1)"],1),sumleq(ws[_,"(- (member$ ?aid $?hin_order) 1)"],0)})" crlf)
)

(defrule potential_facts_for_article_the1
(declare (salience 975))
(id-word ?aid the)
(not (manual_id-mng ?mid vaha|isa|usa))
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE))
=>
                   ;    (printout ?*minion_fp* " eq(ws["?i","(- (member$ ?aid $?hin_order) 1)"],0)" crlf)
                       (printout ?*minion_fp* " sumleq(ws[_,"(- (member$ ?aid $?hin_order) 1)"],0)" crlf)
)

(defrule potential_facts_for_article_a_and_an
(declare (salience 975))
(id-word ?aid a|an)
(manual_id-mng ?mid eka|koI)
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE))
(manual_id-mapped_id ?mid ?mapped_id)
=>
                   ;    (printout ?*minion_fp* " eq(ws["?i","(- (member$ ?aid $?hin_order) 1)"],0)" crlf)
                       (printout ?*minion_fp* " watched-or({ eq(ws["(- ?mapped_id 1)","(- (member$ ?aid $?hin_order) 1)"],1),sumleq(ws[_,"(- (member$ ?aid $?hin_order) 1)"],0)})" crlf)
)

(defrule potential_facts_for_article_a_and_an1
(declare (salience 975))
(id-word ?aid a|an)
(not (manual_id-mng ?mid eka|koI))
(hindi_id_order $?hin_order)
(test (neq (member$ ?aid $?hin_order) FALSE))
=>
                   ;    (printout ?*minion_fp* " eq(ws["?i","(- (member$ ?aid $?hin_order) 1)"],0)" crlf)
                       (printout ?*minion_fp* " sumleq(ws[_,"(- (member$ ?aid $?hin_order) 1)"],0)" crlf)
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
;Added by Maha Laxmi
(defrule print_potential_constraints1
(declare (salience 965))
(man_id-candidate_slots ?mid $?grp)
(hindi_id_order $?hin_order)
=>
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
	(printout ?*minion_fp* "})" crlf)
)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi
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
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
(defrule rm_prep_id_from_prawiniXi
(declare (salience 955))
?f0<-(mot-cat-praW_id-largest_group ?m ?c ?p_id $?d ?id $?d1)
(id-cat_coarse ?id preposition)
(not (id-cat_coarse =(+ ?id 1) verb))
=>
	(retract ?f0)
	(assert (mot-cat-praW_id-largest_group ?m ?c ?p_id $?d $?d1))
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
(defrule get_prawiniXi_grp_info
(declare (salience 954))
(mot-cat-praW_id-largest_group ? ? ? $?grp)
(hindi_id_order $?ids)
(test (> (length $?grp) 1))
=>
        (bind $?g_list (create$))
        (loop-for-count (?i 1 (length $?grp))
                (bind ?id (nth$ ?i $?grp))
                (bind ?pos (member$ ?id $?ids))
		(if (neq ?pos FALSE) then
;		(printout t " "(- ?pos 1) )
		(bind $?g_list (sort > (create$ $?g_list (- ?pos 1)))))
        )
        (assert (grp_ids-slot_ids $?grp - $?g_list))
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
;(defrule print_grp_info
;(declare (salience 953))
;?f0<-(grp_ids-slot_ids $?anu_grp - $?grp)
;(manual_word_length  ?manual_word_len)
;(slot-length  ?anu_slot_len)
;=>
;	(printout ?*minion_fp* crlf " #group : "(implode$ $?anu_grp) " ---- " (implode$ $?grp))
;        (printout ?*minion_fp*  crlf " watched-or({" crlf )
;        (bind ?count 0)
;        (loop-for-count (?k ?count (- ?manual_word_len 1))
;                (printout ?*minion_fp*  "	watched-and({" crlf "		sumgeq([")
;                (loop-for-count (?i ?count (- (+ (length $?grp) ?count ) 1))
;                        (loop-for-count (?j 1 (length $?grp) )
;                                (bind ?s_id (nth$ ?j $?grp))
;                                (printout ?*minion_fp*  "ws["?i","?s_id "]")
;				(if (neq ?j (length $?grp)) then ;Added by Maha Laxmi
;				(printout ?*minion_fp* ","))
;                        )
;                        (if (eq ?i (- (+ (length $?grp) ?count ) 1 )) then
;                                (printout ?*minion_fp*  "],1)"crlf )
;                        else
;                                 (printout ?*minion_fp*  "],1),"crlf "		sumgeq([")
;                        )
;                )
;                (printout ?*minion_fp*  "	})" )
;                (if (eq (+ ?k (length $?grp)) ?manual_word_len )  then
;			(printout ?*minion_fp* crlf)
;                        (break)
;		else
;			(printout ?*minion_fp* "," crlf)
;                )
;                (bind ?count (+ ?count 1))
;        )
;        (printout ?*minion_fp*  "})" crlf)
;)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju(27-07-12)
(deffunction print_weighted_values (?manual_word_len $?grp)
	(bind ?plus_ones (* (length $?grp) (length $?grp)))
	(bind ?minus_ones (* (length $?grp) ?manual_word_len))
;	(printout t crlf "----" ?plus_ones crlf ?minus_ones "-----" crlf)
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
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (27-07-12)
(defrule print_grp_info
(declare (salience 953))
?f0<-(grp_ids-slot_ids $?anu_grp - $?grp)
(manual_word_length  ?manual_word_len)
(test (< (length $?grp) ?manual_word_len))
(slot-length  ?anu_slot_len)
=>
        (printout ?*minion_fp* crlf " #group : "(implode$ $?anu_grp) " ---- " (implode$ $?grp))
        (printout ?*minion_fp*  crlf " watched-or({" crlf "                weightedsumgeq([")
;	(printout t ?manual_word_len " " (length $?grp) " " ?diff "---" crlf)
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
;Added by Shirisha Manju (25-07-12)
(defrule get_conj_grp_info
(declare (salience 951))
(conj_head-left_head-right_head  ?con   ?lh  ?rh)
(pada_info (group_head_id ?lh)(group_cat PP)(group_ids $?grp))
(pada_info (group_head_id ?rh)(group_cat PP)(group_ids $?grp1))
(hindi_id_order $?ids)
(not (grp_ids-slot_ids $?grp - $?))
(not (grp_ids-slot_ids $?grp1 - $?))
=>
	(bind $?g_list (create$))
        (loop-for-count (?i 1 (length $?grp))
                (bind ?id (nth$ ?i $?grp))
                (bind ?pos (member$ ?id $?ids))
                (bind $?g_list (create$ $?g_list (- ?pos 1)))
        )
	(bind $?g_list1 (create$))
        (loop-for-count (?i 1 (length $?grp1))
                (bind ?id (nth$ ?i $?grp1))
                (bind ?pos (member$ ?id $?ids))
                (bind $?g_list1 (create$ $?g_list1 (- ?pos 1)))
        )
	(bind $?slot_ids (create$ $?g_list (- (member$ ?con $?ids) 1) $?g_list1))
 	(bind $?grp_ids (create$ $?grp ?con $?grp1))
        (assert (grp_ids-slot_ids $?grp_ids - $?slot_ids))
)
;------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju
(defrule get_grp_info
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
		(if (neq ?pos FALSE) then
                (bind $?g_list (create$ $?g_list (- ?pos 1))))
        )
        (assert (grp_ids-slot_ids $?grp - $?g_list))
)
;------------------------------------------------------------------------------------------------------------
;Added by Maha Laxmi
(defrule print_EOF_info
(declare (salience -100))
(print_constraint_info)
=>
	(printout ?*minion_fp* crlf " **EOF**" crlf)
)
