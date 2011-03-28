 (defglobal ?*debug* = pada_point_debug)
 (defglobal ?*agmt_cntrl_file* = agmt_cntrl_fp)
 (defglobal ?*pada_cntrl_file* = pada_cntrl_fp)
 (defglobal ?*p_list* = (create$ ))

 (deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

 ;----------------------------------------------------------------------------------------------------------------------
 (deffunction print_in_ctrl_fact_files (?paxa_head)
        (printout       ?*agmt_cntrl_file*      "(agmt_control_fact     "       ?paxa_head      ")"     crlf)
        (printout       ?*pada_cntrl_file*      "(pada_control_fact     "       ?paxa_head      ")"     crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------------
 (deffunction generate_initial_point (?viSeRya)
        (bind ?PH (string-to-field (str-cat ?viSeRya ".1")))
        (assert (id-current_id  ?viSeRya ?PH))
        (assert (current_id-group_members ?PH ?viSeRya))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 (deffunction  generate_incremented_point (?PH ?id)
        (bind ?PH (str-cat ?PH ""))
        (bind ?pos (str-index "." ?PH))
        (bind ?sub-str (sub-string (+ ?pos 1) (length ?PH) ?PH))
        (bind ?sub-str (+ 1 (string-to-field ?sub-str)))
        (bind ?PH (string-to-field (str-cat (sub-string 1 ?pos ?PH) ?sub-str)))
        (assert (id-current_id  ?id ?PH))
        (assert (current_id-group_members ?PH ?id))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 (deffunction generate_order (?id ?id1 ?kri $?grp_mems)
        (bind $?grp_mems (delete-member$ $?grp_mems ?id))
        (bind ?pos (member$ ?id1  $?grp_mems))
        (bind $?grp_mems (insert$ $?grp_mems ?pos ?id))
        (assert (non_finte_verb_unordered_list ?kri $?grp_mems))
 )
 ;====================================   Pada formation ========================================================
 (defrule retract_cntrl_fact
 (declare (salience 2000))
 (has_been_included_in_paxa ?id)
 ?f<-(to_be_included_in_paxa ?id)
 =>
  	(printout ?*debug*  " retract_cntrl_fact " crlf)
  	(retract ?f)
 )
 ;------------------------------------------------------------------------------------------------------------- 
 (defrule conj_list
 (declare (salience 1005))
 ?f<- (conjunction-components  ?conj  ?id $?id1)
 (not (conjunction-comp ?conj $?IDS))
 =>
        (bind $?ids (sort > (create$ ?id ?conj $?id1)))
        (assert (conjunction-comp ?conj $?ids))
        (printout ?*debug*  " conj_list " ?conj" " (implode$  $?ids) crlf)
 )
 ;------------------------------------------------------------------------------------------------------------- 
 ;Added by Roja (25-02-11)
 ;It is sometimes difficult to reconcile science and religion.
 ;The black and white cat sleeps.
 (defrule conj_comp_rule
 (declare (salience 1010))
 (conjunction-components  ?conj  ?id $?id1)
 (conjunction-comp ?conj $?IDS)
 ?f<-(to_be_included_in_paxa ?i)
 =>
	(print_in_ctrl_fact_files  ?conj)	
    (if (eq ?i ?conj) then
       (retract ?f)
       (assert (id-current_id  ?conj ?conj))
       (assert (current_id-group_members ?conj  $?IDS))
       (assert (pada_info (group_head_id ?conj) (group_cat PP) (group_ids $?IDS)(pada_head ?conj)))
       (printout ?*debug*  "conj_comp_rule  "?conj"   " (implode$  $?IDS)  crlf)
    )
    (if (or (neq (member$ ?i $?id1) FALSE)(eq ?i ?id)) then
          (retract ?f)
    )
 )
 ;------------------------------------------------------------------------------------------------------------- 
 ;Generating finite kriyA pada
 (defrule kriyA_pada
 (declare (salience 1003))
 (root-verbchunk-tam-chunkids ? ? ? $?ids ?kri)
 ?f<-(to_be_included_in_paxa ?kri)
  =>
 	(retract ?f)
 	(print_in_ctrl_fact_files  ?kri)
 	(assert (pada_info (group_head_id ?kri) (group_cat VP) (group_ids $?ids ?kri)(pada_head ?kri)))
 	(bind ?len (length $?ids))
 	(loop-for-count (?i 1 ?len)
        	(bind ?j (nth$ ?i $?ids))
                (assert (has_been_included_in_paxa ?j))
 	)
 	(assert (id-current_id  ?kri ?kri))
 	(assert (current_id-group_members ?kri $?ids ?kri)) 
 	(printout ?*debug*  "kriyA_pada  "?kri" " (implode$  $?ids) " " ?kri crlf)
 )
 ;------------------------------------------------------------------------------------------------------------- 
 ;;Generating to-infinitive pada
 (defrule to-infinitive_pada
 (declare (salience 1002))
 ?f0<-(prep_id-relation-anu_ids  ? to-infinitive  ?to ?inf)
 ?f<-(to_be_included_in_paxa ?inf)
 ?f1<-(to_be_included_in_paxa ?to) 
 =>
 	(retract ?f ?f1)
	(print_in_ctrl_fact_files  ?inf)
 	(assert (pada_info (group_head_id ?inf) (group_cat infinitive) (group_ids  ?to ?inf)(pada_head ?inf)))
 	(assert (id-current_id  ?inf ?inf))  
 	(assert (current_id-group_members ?inf ?to ?inf))
 	(printout ?*debug*  "to-infinitive_pada  " ?inf" " ?to "  " ?inf crlf) 
 )
 ;-------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (16-03-11)
 ;if viSeRya is conj then get pada for RaRTI_viSeRaNa
 ;Ex: Your house and garden are very attractive.  (conjunction-comp 3 2 4) and  (viSeRya-RaRTI_viSeRaNa 3 1)
 (defrule RaRTI_viSeRaNa_rule1
 (declare (salience 1002))
 ?f2<-(prep_id-relation-anu_ids  ?id  viSeRya-RaRTI_viSeRaNa  ?viSeRya ?viSeRaNa)
 (conjunction-comp  ?viSeRya $?ids)
 ?f1<-(to_be_included_in_paxa ?viSeRaNa)
  =>
        (retract ?f1)
        (print_in_ctrl_fact_files  ?viSeRaNa)
        (assert (pada_info (group_head_id ?viSeRaNa) (group_cat PP) (group_ids  ?viSeRaNa)(pada_head ?viSeRaNa)))
        (assert (id-current_id  ?viSeRaNa ?viSeRaNa))
        (assert (current_id-group_members ?viSeRaNa ?viSeRaNa))
        (printout ?*debug* "RaRTI_viSeRaNa_rule1" ?viSeRaNa"  " ?viSeRaNa crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 ;Ex: Our team was easily beaten in the competition. 
 (defrule RaRTI_viSeRaNa_rule
 (declare (salience 1001))
 ?f2<-(prep_id-relation-anu_ids  ?id  viSeRya-RaRTI_viSeRaNa  ?viSeRya ?viSeRaNa)
  ?f<-(to_be_included_in_paxa ?viSeRya)
 ?f1<-(to_be_included_in_paxa ?viSeRaNa)
  =>
        (retract ?f ?f1)
        (print_in_ctrl_fact_files  ?viSeRya)
        (print_in_ctrl_fact_files  ?viSeRaNa)
        (assert (pada_info (group_head_id ?viSeRya) (group_cat PP) (group_ids  ?viSeRya)(pada_head ?viSeRya)))
        (assert (id-current_id  ?viSeRya ?viSeRya))
        (assert (current_id-group_members ?viSeRya ?viSeRya))
        (printout ?*debug* "RaRTI_viSeRaNa_rule " ?viSeRya"  " ?viSeRya crlf)
        (assert (pada_info (group_head_id ?viSeRaNa) (group_cat PP) (group_ids  ?viSeRaNa)(pada_head ?viSeRaNa)))
        (assert (id-current_id  ?viSeRaNa ?viSeRaNa))
        (assert (current_id-group_members ?viSeRaNa ?viSeRaNa))
        (printout ?*debug* "RaRTI_viSeRaNa_rule  " ?viSeRaNa"  " ?viSeRaNa crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 ;The snake the mongoose attacked hissed loudly.
 ;The book I was reading is wonderful
 (defrule asserted_who
 (declare (salience 1000))
 ?f<-(prep_id-relation-anu_ids  ?id viSeRya-jo_samAnAXikaraNa ?vi ?jo)
 (id-word 10000 ?)
 (not (has_been_included_in_paxa 10000))
 =>
	(print_in_ctrl_fact_files   10000)
        (assert (has_been_included_in_paxa 10000))
        (assert (pada_info (group_head_id 10000)(group_cat PP)(group_ids 10000)(pada_head 10000)))
        (assert (id-current_id  10000 10000))
        (assert (current_id-group_members 10000 10000))
	(printout ?*debug*  "asserted_who 10000 10000 " crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 ;She was asked about the pay increase but made no comment.
 ;She hurt her arm in the fall and lost the use of her fingers temporarily.
 (defrule subject_insertion
 (declare (salience 1000))
 ?f<-(prep_id-relation-anu_ids  ?id kriyA-subject  ?kriyA 10001)
 (not (has_been_included_in_paxa 10001))
 =>
	(print_in_ctrl_fact_files   10001)
        (assert (has_been_included_in_paxa 10001))
        (assert (pada_info (group_head_id 10001)(group_cat PP)(group_ids 10001)(pada_head 10001)))
        (assert (id-current_id  10001 10001))
        (assert (current_id-group_members 10001 10001))
 	(printout ?*debug* "subject_insertion 10001 10001 " crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 ;I hope he comes to the party tomorrow.
 (defrule subject_conjunction_insert
 (declare (salience 1000))
 ?f<-(prep_id-relation-anu_ids  ?id kriyA-conjunction  ?sub 10000)
 (not (has_been_included_in_paxa 10000))
 =>
	(print_in_ctrl_fact_files   10000)
        (assert (has_been_included_in_paxa 10000))
        (assert (pada_info (group_head_id 10000)(group_cat PP)(group_ids 10000)(pada_head 10000)))
        (assert (id-current_id  10000 10000))
        (assert (current_id-group_members 10000 10000))
	(printout ?*debug* "subject_conjunction_insert 10000 10000 "crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule PP_pada
 (declare (salience 1000))
 (root-verbchunk-tam-chunkids ? ? ? $?ids ?kri)
 ?f1<-(prep_id-relation-anu_ids  ?id  ?rel  ?kri ?PP)
 (test (or (eq ?rel kriyA-subject)(eq ?rel kriyA-object)(eq ?rel saMjFA-saMjFA_samAnAXikaraNa)(eq ?rel subject-subject_samAnAXikaraNa)(eq ?rel kriyA-kriyA_viSeRaNa)(eq ?rel kriyA-upasarga)(eq ?rel kriyA-dummy_subject)(eq ?rel saMKyA-saMKyA))) 
 ?f<-(to_be_included_in_paxa ?PP)
  => 
 	(retract ?f )
	(print_in_ctrl_fact_files  ?PP)
 	(assert (pada_info (group_head_id ?PP) (group_cat PP) (group_ids  ?PP)(pada_head ?PP)))
 	(assert (id-current_id  ?PP ?PP))
 	(assert (current_id-group_members ?PP ?PP))
 	(printout ?*debug* "PP_pada  " ?PP " "?PP crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule PP_pada1
 (declare (salience 1000))
 ?f1<-(prep_id-relation-anu_ids  ?id  ?rel  ?kri ?PP)
 (test (neq (str-index "-" ?rel)  FALSE))
 (test (neq (str-index "_" ?rel)  FALSE))
 (test (or (eq (sub-string 1 (- (str-index "-" ?rel) 1) ?rel) "kriyA") (eq (sub-string 1 (- (str-index "-" ?rel) 1) ?rel) "viSeRya")))
 (test (eq (sub-string (+ (+ (str-index "-" ?rel) 1) (- (str-index "_" ?rel)  (str-index "-" ?rel))) (length ?rel) ?rel) "saMbanXI"))
 ?f<-(to_be_included_in_paxa ?PP)
  =>
 	(retract ?f )
	(print_in_ctrl_fact_files  ?PP)
 	(assert (pada_info (group_head_id ?PP) (group_cat PP) (group_ids  ?PP)(pada_head ?PP)))
 	(assert (id-current_id  ?PP ?PP))
 	(assert (current_id-group_members ?PP ?PP))
 	(printout ?*debug* "PP_pada1  " ?PP" " ?PP crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule PP_pada2
 (declare (salience 1001))
 ?f1<-(prep_id-relation-anu_ids  ?  ?rel ?id ?id1)
 (test (or (eq ?rel proper_noun-waxviSiRta_proper_noun) (eq ?rel idiom_type_1)(eq ?rel saMKyA-saMKyA)))
 ?f2<-(pada_info (group_head_id ?viSeRya)(group_ids  $?grp_ids)(group_cat ?gtype)(pada_head ?PH))
 ?f<-(to_be_included_in_paxa ?id)
 (test (member$ ?id1 $?grp_ids))
 (id-current_id  ?viSeRya ?PH)
 ?f3<-(current_id-group_members ?PH $?grp_ids)
  =>
 	(retract ?f1 ?f ?f2 ?f3)
 	(bind $?grp_ids (sort > (create$   $?grp_ids ?id)))
 	(modify ?f2 (group_ids $?grp_ids))
 	(assert (current_id-group_members ?PH $?grp_ids))
 	(printout ?*debug* "PP_pada2 " ?PH" " (implode$  $?grp_ids) crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 ;Only for Open-Logos-Parser
 ;Added by Shirisha Manju (18-03-11)
 ;Everyone should enjoy each and every activity that he does.
 (defrule ol_grouped_ids_pada
 (declare (salience 991))
 (Parser_used Open-Logos-Parser)
 (prep_id-relation-anu_ids   ?  viSeRya-det_viSeRaNa  ?v  ?head)
 ?f1<-(pada_info (group_head_id ?v) (group_ids $?))
 (current_id-group_members      ?det_vi  $?ids ?head)
 ?f2<-(id-current_id ?v ?v)
 ?f3<-(current_id-group_members ?v ?v)
 ?f<-(to_be_included_in_paxa ?head)
 =>
        (retract ?f ?f2 ?f3)
        (bind ?v1 (string-to-field (str-cat ?v ".1")))
        (modify ?f1 (group_head_id ?v) (group_cat PP) (group_ids  $?ids ?head ?v)(pada_head ?v1))
        (assert (id-current_id  ?v ?v1))
        (assert (current_id-group_members ?v1 ?head ?v))
        (printout ?*debug* "ol_grouped_ids_pada   "?v "   " ?head" " ?v crlf)
        (bind ?len (length $?ids))
        (loop-for-count (?i 1 ?len) do
                (bind ?j (nth$ ?i $?ids))
                (assert (has_been_included_in_paxa ?j))
        )
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule viSeRaNa_pada
 (declare (salience 990))
 ?f0<-(prep_id-relation-anu_ids  ?id  ?rel ?viSeRya1 ?viSeRaNa)
(test (or (eq ?rel viSeRya-det_viSeRaNa)(eq ?rel viSeRya-viSeRaNa)(eq ?rel samAsa)(eq ?rel viSeRya-saMKyA_viSeRaNa)(eq ?rel viSeRaNa-viSeRaka)(eq ?rel idiom_type_1)(eq ?rel proper_noun-waxviSiRta_proper_noun)(eq ?rel viSeRya-wulanAwmaka_viSeRaNa)(eq ?rel saMKyA-saMKyA)(eq ?rel viSeRya-saMKyA_viSeRaNa) (eq ?rel viSeRya-emphatic_marker)(eq ?rel kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka)(eq ?rel viSeRaNa-viSeRaka)(eq ?rel viSeRya-viSeRaka)))
 ?f<-(to_be_included_in_paxa ?viSeRaNa)
 ?f1<-(pada_info (group_head_id ?viSeRya)(group_ids  $?grp_ids)(group_cat ?gtype)(pada_head ?PH))
 ?f2<-(id-current_id  ?viSeRya ?current_id)
 ?f3<-(current_id-group_members ?current_id $?grp_ids)
 (test (member$ ?viSeRya1 $?grp_ids))
 =>
 	(retract ?f ?f2 ?f3)
	(if (eq ?viSeRya ?current_id) then
		(generate_initial_point ?viSeRya)
		(assert (viSeRaNa_ids ?viSeRya $?grp_ids ?viSeRaNa))
		(printout ?*debug* "viSeRaNa_pada " ?viSeRya" " ?viSeRaNa"  "(implode$  $?grp_ids) crlf)
	else
		(generate_incremented_point ?PH ?viSeRya)
		(assert (viSeRaNa_ids ?viSeRya $?grp_ids ?viSeRaNa))
		(printout ?*debug* "viSeRaNa_pada " ?viSeRya" " ?viSeRaNa"  "(implode$  $?grp_ids) crlf)
 	)
 )
 ;-------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju
 ;This is a sample sentence for Anusaraka. 
 (defrule modifying_pada_for_increment
 (declare (salience 990))
 ?f<-(viSeRaNa_ids ?id $?grp_ids ?viSeRaNa)
 ?f1<-(id-current_id ?id ?c_id)
 ?f2<-(current_id-group_members ?c_id $?ids)
 ?f3<-(pada_info (group_head_id ?id) (group_ids $?) (pada_head ?PH))
 =>
        (retract ?f ?f1 ?f2)
        (bind $?grp_ids (sort > (create$  $?grp_ids ?viSeRaNa)))
        (assert (id-current_id ?id ?c_id))
        (assert (current_id-group_members ?c_id $?grp_ids))
        (modify ?f3 (group_ids $?grp_ids)(pada_head ?c_id))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (03-03-11)
 ;Ex. Mohan fell from the top of the house.
 ;He was an exotic creature with short red hair and brilliant green eyes.  (group_head "and" )
 (defrule test_for_prep
 (declare (salience 981))
 (prep_id-relation-anu_ids  ?prep_id ?rel ?x ?prep_saM)
 ?f1<-(pada_info (group_head_id ?id)(group_ids  $?ids)(preposition ?prep))
 ?f<-(to_be_included_in_paxa ?prep_id)
 (test (neq ?prep_id -))
 (test (or (eq ?prep_saM ?id)(member$ ?prep_saM $?ids)))
  =>
        (retract ?f)
        (modify ?f1 (preposition ?prep_id))
        (printout ?*debug* "test_for_prep        "?prep_saM " "?prep_id crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju (04-03-11)
 ;Suman and Sarika live next to each other.
 (defrule test_for_prep1
 (declare (salience 981))
 (prep_id-relation-anu_ids  $?prep_ids ?rel ?x ?prep_saM)
 ?f1<-(pada_info (group_head_id ?prep_saM)(preposition $?prep))
 (test (eq (sub-string (- (length ?rel) 7) 1000 ?rel) "saMbanXI"))
 ?f<-(to_be_included_in_paxa ?prep_id)
 (test (neq (length $?prep_ids) 1))
 (test (member$ ?prep_id $?prep_ids))
  =>
        (bind ?len (length $?prep_ids))
        (bind $?prep_ids (sort > $?prep_ids))
        (modify ?f1  (preposition  $?prep_ids))
        (loop-for-count (?i 1 ?len) do
                (if (eq ?prep_id (nth$ ?i $?prep_ids)) then
                        (retract ?f)
                )
        )
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule default_pada
 (declare (salience 980))
 ?f<-(to_be_included_in_paxa ?PP)
 (not (id-cat_coarse ?PP preposition))
 =>
        (retract ?f)
        (print_in_ctrl_fact_files  ?PP)
        (assert (pada_info (group_head_id ?PP) (group_cat PP) (group_ids  ?PP)(pada_head ?PP)))
        (assert (id-current_id  ?PP ?PP))
        (assert (current_id-group_members ?PP ?PP))
        (printout ?*debug* "default_pada   "?PP " "?PP crlf)
 )

 ;============================================== Ordering rules ==================================================
 ; Added by Shirisha Manju
 ;A fat ugly boy had to eat too many fruits to lose his weight. 
 ;Running is good for health.
 (defrule modifying_pada_for_increment1
 (declare (salience 981))
 ?f<-(to_be_grouped_ids ?id $?grp_ids ?viSeRaNa)
 ?f1<-(id-current_id ?id ?c_id)
 ?f2<-(current_id-group_members ?c_id $?ids)
 ?f3<-(pada_info (group_head_id ?id) (group_ids $?) (pada_head ?PH))
 =>
        (retract ?f ?f1 ?f2)
        (bind $?grp_ids (sort < (create$  $?grp_ids ?viSeRaNa)))
        (assert (id-current_id ?id ?c_id))
        (assert (current_id-group_members ?c_id $?grp_ids))
	(modify ?f3 (pada_head ?c_id))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 (defrule non_finite_kriyA_pada
 (declare (salience 981))
 ?f0<-(prep_id-relation-anu_ids  ? ?rel ?kri ?id) 
 (test (and (neq ?rel kriyA-karwA)(neq ?rel kriyA-vAkyakarma)))
 (test (neq (str-index "-" ?rel)  FALSE))
 (test (eq (sub-string 1 (str-index "-" ?rel) ?rel) "kriyA-"))
 (not (root-verbchunk-tam-chunkids ? ? ? $?ids ?kri))
 (not (id-word ?kri and|or))
 ?f1<-(pada_info (group_head_id ?kri)(group_ids  $?grp_ids)(group_cat ?gtype)(pada_head ?PH))
 ?f2<-(pada_info (group_head_id ?id)(group_ids  $?grp_ids1)(pada_head ?ph))
 ?f3<-(id-current_id  ?kri ?current_id)
 ?f4<-(current_id-group_members ?current_id $?c_ids)
 ?f5<-(id-current_id  ?id ?current_id1)
 ?f6<-(current_id-group_members ?current_id1 $?grp_ids1)
 (test (eq (member$ ?id $?c_ids) FALSE))
 =>
 	(retract ?f3 ?f4 ?f5 ?f6) 
 	(if (eq ?kri ?current_id) then
		(generate_initial_point ?kri)
		(assert (to_be_grouped_ids ?kri $?c_ids ?grp_ids1))
		(printout ?*debug* "non_finite_kriyA_pada " ?kri "  "$?c_ids" " (implode$  ?grp_ids1) crlf)
 	else
		(generate_incremented_point ?PH ?kri)
                (assert (to_be_grouped_ids ?kri $?c_ids ?grp_ids1))
		(printout ?*debug* "non_finite_kriyA_pada " ?kri" " $?c_ids"  " (implode$ ?grp_ids1) crlf)
 ))
 ;-------------------------------------------------------------------------------------------------------------
 ;But my efforts to win his heart have failed.
 (defrule non_finite_kriyA_pada1
 (declare (salience 980))
 ?f0<-(prep_id-relation-anu_ids  ? saMjFA-to_kqxanwa ?id ?kri)
 (not (root-verbchunk-tam-chunkids ? ? ? $?ids ?kri))
 ?f1<-(pada_info (group_head_id ?kri)(group_ids  $?grp_ids)(group_cat ?gtype)(pada_head ?PH))
 ?f2<-(pada_info (group_head_id ?id)(group_ids  $?grp_ids1)(pada_head ?ph))
 ?f3<-(id-current_id  ?kri ?current_id)
 ?f4<-(current_id-group_members ?current_id $?c_ids)
 ?f5<-(id-current_id  ?id ?current_id1)
 ?f6<-(current_id-group_members ?current_id1 $?grp_ids1)
 (test (eq (member$ ?id $?c_ids) FALSE))
  =>
 	(retract ?f3 ?f4 ?f5 ?f6)
 	(if (eq ?kri ?current_id) then
		(generate_initial_point ?kri)
		(assert (to_be_grouped_ids ?kri $?c_ids ?grp_ids1))
		(printout ?*debug* "non_finite_kriyA_pada1 " ?kri "  " $?c_ids"  "(implode$  ?grp_ids1) crlf)
 	else
		(generate_incremented_point ?PH ?kri)
                (assert (to_be_grouped_ids ?kri $?c_ids ?grp_ids1))
		(printout ?*debug* "non_finite_kriyA_pada1 " ?kri"  " $?c_ids"  "(implode$ ?grp_ids1)crlf)
 ))
 ;-------------------------------------------------------------------------------------------------------------
 ;But my efforts to win his heart have failed.
 (defrule non_finite_kriyA_pada2
 (declare (salience 979))
 ?f0<-(prep_id-relation-anu_ids  ?  viSeRya-RaRTI_viSeRaNa ?id ?id1)
 ?f1<-(pada_info (group_head_id ?kri)(group_ids  $?grp_ids)(group_cat ?gtype)(pada_head ?PH))
 (test (or (eq ?gtype infinitive) (eq ?gtype VP)))
 (not (root-verbchunk-tam-chunkids ? ? ? $?ids ?kri))
 ?f2<-(pada_info (group_head_id ?id1)(group_ids  $?grp_ids1)(pada_head ?ph))
 ?f3<-(id-current_id  ?kri ?current_id)
 ?f4<-(current_id-group_members ?current_id $?c_ids)
 ?f5<-(id-current_id  ?id1 ?current_id1)
 ?f6<-(current_id-group_members ?current_id1 $?grp_ids1)
 (test (member$ ?id $?c_ids))
 =>
	(retract ?f3 ?f4 ?f5 ?f6)
 	(if (eq ?kri ?current_id) then
		(generate_initial_point ?kri)
                (assert (to_be_grouped_ids ?kri $?c_ids ?grp_ids1))
		(printout ?*debug* "non_finite_kriyA_pada2 " ?kri" " $?c_ids" "(implode$ ?grp_ids1)crlf)
 	else
		(generate_incremented_point ?PH ?kri)
                (assert (to_be_grouped_ids ?kri $?c_ids ?grp_ids1))
		(printout ?*debug* "non_finite_kriyA_pada2 " ?kri"  " $?c_ids"  "(implode$ ?grp_ids1)crlf)
 ))
 ;-------------------------------------------------------------------------------------------------------------
 (defrule test_for_conj
 (declare (salience 940))
 ?f0<-(id-current_id  ?id ?current_id)
 ?f1<-(current_id-group_members ?current_id $?grp_ids)
 ?f2<-(pada_info (group_head_id ?i)(group_ids  $?grp_ids)(group_cat PP)(pada_head ?PH)(preposition ?prep))
 ?f3<-(id-word ?id3 neither|either|nor)
 (test (eq ?id3 (- (nth$ 1 $?grp_ids) 1)))
 (test (neq ?prep ?id3))
 =>
 	(retract ?f0 ?f1 ?f2 ?f3)
 	(bind ?PH (str-cat ?PH ""))
 	(bind ?pos (str-index "." ?PH))
 	(bind ?sub-str (sub-string (+ ?pos 1) (length ?PH) ?PH))
 	(bind ?sub-str (+ 1 (string-to-field ?sub-str)))
 	(bind ?PH (string-to-field (str-cat (sub-string 1 ?pos ?PH) ?sub-str)))
 	(bind $?grp_ids (create$  ?id3 $?grp_ids))
 	(assert (pada_info(group_head_id ?i) (group_ids  $?grp_ids)(group_cat PP)(pada_head ?PH)(preposition ?prep)))
 	(assert (id-current_id  ?i ?PH))
 	(assert (current_id-group_members ?PH $?grp_ids))
 	(printout ?*debug* "test_for_conj "?PH "  " (implode$  $?grp_ids) crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 ;getting list of ids for non_finite_kriyA
 (defrule test_for_non_finite_kriyA
 (declare (salience 970))
 ?f0<-(prep_id-relation-anu_ids  ? ?rel ?kri ?id)
 (test (neq (str-index "-" ?rel)  FALSE))
 (test (eq (sub-string 1 (str-index "-" ?rel) ?rel) "kriyA-"))
 (not (root-verbchunk-tam-chunkids ? ? ? $?ids ?kri)) 
 ?f1<-(id-current_id  ?kri ?current_id)
 (current_id-group_members ?current_id $?grp_mems)
 (test (member$ ?kri $?grp_mems))
 (not (Search ?kri $?grp_mems))
  =>
 	(assert  (non_finte_verb_unordered_list ?kri $?grp_mems))
 	(assert (Search ?kri $?grp_mems))
 	(printout ?*debug* "test_for_non_finite_kriyA  "?kri "  " (implode$  $?grp_mems)  crlf)
)
 ;-------------------------------------------------------------------------------------------------------------
 ;getting list of ids for non_finite_kriyA
 (defrule test_for_non_finite_kriyA1
 (declare (salience 969))
 ?f0<-(prep_id-relation-anu_ids  ?id to-infinitive ?to ?kri)
 (not (root-verbchunk-tam-chunkids ? ? ? $?ids ?kri))
 ?f1<-(id-current_id  ?kri ?current_id)
 (current_id-group_members ?current_id $?grp_mems)
 (test (member$ ?kri $?grp_mems))
 (not (Search ?kri $?grp_mems))
  =>
 	(assert  (non_finte_verb_unordered_list ?kri $?grp_mems))
 	(assert (Search ?kri $?grp_mems))
 	(printout ?*debug* "test_for_non_finite_kriyA1  "?kri "  " (implode$  $?grp_mems) crlf)
)
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_order1-1
 (declare (salience 960))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(prep_id-relation-anu_ids  ? kriyA-object ?id1 ?id)
 (test (and (member$ ?id $?grp_mems)(member$ ?id1 $?grp_mems)))
 =>
 	(retract ?f0  ?f1)
	(generate_order ?id ?id1 ?kri $?grp_mems)
	(printout ?*debug* "non_finite_order1-1 " ?id" " ?id1"  "?kri" "(implode$  $?grp_mems) crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_order1-2
 (declare (salience 961))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(prep_id-relation-anu_ids  ? saMjFA-to_kqxanwa ?id1 ?id)
 (test (and (member$ ?id $?grp_mems)(member$ ?id1 $?grp_mems)))
 =>
 	(retract ?f0 ?f1)
 	(generate_order ?id ?id1 ?kri $?grp_mems)
	(printout ?*debug* "non_finite_order1-2 " ?id" " ?id1"  "?kri" "(implode$  $?grp_mems) crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 ;But my efforts to win his heart have failed.
 (defrule non_finite_order1-3
 (declare (salience 959))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(prep_id-relation-anu_ids  ?pid viSeRya-RaRTI_viSeRaNa ?id1 ?id)
 (test (and (member$ ?id $?grp_mems)(member$ ?id1 $?grp_mems)))
 =>
 	(retract ?f0 ?f1)
	(generate_order ?id ?id1 ?kri $?grp_mems)
	(printout ?*debug* "non_finite_order1-3 " ?id" " ?id1"  "?kri" "(implode$  $?grp_mems) crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_order2
 (declare (salience 960))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(prep_id-relation-anu_ids  ?pid  ?rel ?kri ?id)
  (test (neq (str-index "-" ?rel)  FALSE))
  (test (neq (str-index "_" ?rel)  FALSE))
  (test (or (eq (sub-string 1 (- (str-index "-" ?rel) 1) ?rel) "viSeRya")(eq (sub-string 1 (- (str-index "-" ?rel) 1) ?rel) "kqxanwa")))
(test (or (eq (sub-string (+ (+ (str-index "-" ?rel) 1) (- (str-index "_" ?rel)  (str-index "-" ?rel))) (length ?rel) ?rel) "saMbanXI")(eq (sub-string (+ (+ (str-index "-" ?rel) 1) (- (str-index "_" ?rel)  (str-index "-" ?rel))) (length ?rel) ?rel) "prep_saMbanXI")(eq (sub-string (+ (+ (str-index "-" ?rel) 1) (- (str-index "_" ?rel)  (str-index "-" ?rel))) (length ?rel) ?rel) "viSeRaNa")))
 ?f3<-(pada_info (group_head_id ?kri)(group_ids  $?grp_ids)(group_cat ?gtype)(pada_head ?PH))
 ?f4<-(pada_info (group_head_id ?id)(group_ids  $?grp_ids1)(pada_head ?ph))
 (test (member$ ?id $?grp_mems))
 =>
 	(retract ?f0 ?f1)
 	(bind $?grp_ids_tmp $?grp_ids)
 	(bind ?pos (member$ (first$ $?grp_ids) $?grp_mems))
 	(bind ?len (length $?grp_ids1))
 	(loop-for-count (?l 1 ?len)
                  (bind ?j (nth$ ?l $?grp_ids1))
                  (bind $?grp_mems (delete-member$ $?grp_mems ?j))
                  (bind $?grp_ids_tmp (delete-member$ $?grp_ids_tmp ?j))
        )
 	(bind $?grp_mems (insert$ $?grp_mems ?pos $?grp_ids1))
 	(assert (non_finte_verb_unordered_list ?kri $?grp_mems))
 	(printout ?*debug* "non_finite_order2  "?kri "  " (implode$  $?grp_mems) crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_order3
 (declare (salience 960))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(prep_id-relation-anu_ids  ? kriyA-conjunction ?kri ?id)
 ?f3<-(pada_info (group_head_id ?kri)(group_ids  $?grp_ids)(group_cat ?gtype)(pada_head ?PH))
 ?f4<-(pada_info (group_head_id ?id)(group_ids  $?grp_ids1)(pada_head ?ph))
 (test (member$ ?id $?grp_mems))
 =>
 	(retract ?f0 ?f1)
 	(bind ?pos (member$ (first$ $?grp_ids) $?grp_mems))
 	(bind ?len (length $?grp_ids1))
 	(loop-for-count (?l 1 ?len)
                  (bind ?j (nth$ ?l $?grp_ids1))
                  (bind $?grp_mems (delete-member$ $?grp_mems ?j))
        )
 	(bind $?grp_mems (insert$ $?grp_mems ?pos $?grp_ids1))
 	(assert (non_finte_verb_unordered_list ?kri $?grp_mems))
 	(printout ?*debug* "non_finite_order3  "?kri "  " (implode$  $?grp_mems) crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_order4
 (declare (salience 955))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(prep_id-relation-anu_ids  ? samAsa ?id1 ?id)
 (test (and(member$ ?id $?grp_mems) (member$ ?id1 $?grp_mems)))
 =>
 	(retract ?f0 ?f1)
	(generate_order ?id ?id1 ?kri $?grp_mems)
	(printout ?*debug* "non_finite_order4 " ?id" " ?id1"  "?kri" "(implode$  $?grp_mems) crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_order5
 (declare (salience 955))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(prep_id-relation-anu_ids  ? viSeRya-viSeRaNa ?id1 ?id)
 (test (and(member$ ?id $?grp_mems) (member$ ?id1 $?grp_mems)))
 =>
 	(retract ?f0 ?f1)
	(generate_order ?id ?id1 ?kri $?grp_mems)
	(printout ?*debug* "non_finite_order5 " ?id" " ?id1"  "?kri" "(implode$  $?grp_mems) crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_order6
 (declare (salience 955))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(prep_id-relation-anu_ids  ? viSeRya-wulanAwmaka_viSeRaNa ?id1 ?id)
 (test (and(member$ ?id $?grp_mems) (member$ ?id1 $?grp_mems)))
 =>
 	(retract ?f0 ?f1)
	(generate_order ?id ?id1 ?kri $?grp_mems)
	(printout ?*debug* "non_finite_order6 " ?id" " ?id1"  "?kri" "(implode$  $?grp_mems) crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_order7
 (declare (salience 956))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(prep_id-relation-anu_ids  ? viSeRya-det_viSeRaNa ?id1 ?id)
 (test (and(member$ ?id $?grp_mems) (member$ ?id1 $?grp_mems)))
 =>
 	(retract ?f0 ?f1)
	(generate_order ?id ?id1 ?kri $?grp_mems)
	(printout ?*debug* "non_finite_order7 " ?id" " ?id1"  "?kri" "(implode$  $?grp_mems) crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_order8
 (declare (salience 956))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(prep_id-relation-anu_ids  ? viSeRaNa-viSeRaka ?id1 ?id)
 (test (and(member$ ?id $?grp_mems) (member$ ?id1 $?grp_mems)))
 =>
 	(retract ?f0 ?f1)
	(generate_order ?id ?id1 ?kri $?grp_mems)
	(printout ?*debug* "non_finite_order8 " ?id" " ?id1"  "?kri" "(implode$  $?grp_mems) crlf)
 )
 ;------------------------------------------------------------------------------------------------------------- 
 (defrule non_finite_order9
 (declare (salience 956))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(prep_id-relation-anu_ids  ? to-infinitive ?id ?id1)
 (test (and(member$ ?id $?grp_mems) (member$ ?id1 $?grp_mems)))
 =>
 	(retract ?f0 ?f1)
	(generate_order ?id ?id1 ?kri $?grp_mems)
	(printout ?*debug* "non_finite_order9 " ?id" " ?id1"  "?kri" "(implode$  $?grp_mems) crlf)
)
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_order10
 (declare (salience 956))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(prep_id-relation-anu_ids  ? object-object_samAnAXikaraNa ?id1 ?id)
 (test (and(member$ ?id $?grp_mems) (member$ ?id1 $?grp_mems)))
 =>
 	(retract ?f0 ?f1)
	(generate_order ?id ?id1 ?kri $?grp_mems)
	(printout ?*debug* "non_finite_order10 " ?id" " ?id1"  "?kri" "(implode$  $?grp_mems) crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_order11
 (declare (salience 955))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(prep_id-relation-anu_ids  ? kriyA-kriyA_niReXaka ?id1 ?id)
 (test (and(member$ ?id $?grp_mems) (member$ ?id1 $?grp_mems)))
 =>
 	(retract ?f0 ?f1)
 	(bind $?grp_mems (delete-member$ $?grp_mems ?id))
 	(bind ?pos (member$ ?id1 $?grp_mems))
 	(bind $?grp_mems (insert$ $?grp_mems ?pos ?id))
 	(assert (non_finte_verb_unordered_list ?kri $?grp_mems))
 	(printout ?*debug* "non_finite_order11  "?kri "  " (implode$  $?grp_mems) crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_order12
 (declare (salience 950))
 ?f<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 (id-current_id ?kri ?id)
 ?f1<-(current_id-group_members ?id $?grp)
 =>
 	(retract ?f1 ?f)
 	(assert (current_id-group_members ?id $?grp_mems))
 	(printout ?*debug* "non_finite_order12  "?kri "  " (implode$  $?grp_mems) crlf)
)
 ;-------------------------------------------------------------------------------------------------------------
 (defrule saMjFA-saMjFA_samAnAikaraNa_rule1
 (declare (salience 899))
 ?f1<-(prep_id-relation-anu_ids  ?id saMjFA-saMjFA_samAnAXikaraNa ?saMjFA_id ?saMjFA_samAnAikaraNa_id)
 (conjunction-comp  ?conj $?components)
 ?f3<-(current_id-group_members ?conj $?grp_ids)
 ?f2<-(pada_info (group_head_id ?conj)(group_ids $?grp_ids)(group_cat PP)(pada_head ?conj))
 (id-word ?conj and|or)
 (test (and (member$ ?saMjFA_id $?grp_ids)(member$ ?saMjFA_id $?grp_ids)))
  =>
        (retract ?f1 ?f3 ?f2)
        (bind $?grp_ids (delete-member$ $?grp_ids ?saMjFA_samAnAikaraNa_id))
        (bind ?pos (member$ ?conj $?grp_ids))
        (if (> ?saMjFA_samAnAikaraNa_id ?conj) then
 	       	(bind ?pos (+ ?pos 1))
        else
        	(bind ?pos 1)
	)
        (bind $?grp_ids (insert$ $?grp_ids ?pos ?saMjFA_samAnAikaraNa_id))
        (assert (current_id-group_members ?conj $?grp_ids))
  	(printout ?*debug* "saMjFA-saMjFA_samAnAikaraNa_rule1  "?conj" " (implode$  $?grp_ids) crlf)
        (assert (pada_info (group_head_id ?conj)(group_ids $?grp_ids)(group_cat PP)(pada_head ?conj)))
  )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule map_left_relations
 ?f0<-(prep_id-relation-anu_ids  ?p ?rel ?id ?id1)
 (root-verbchunk-tam-chunkids ? ? ? $?ids)
 (test (not (member$ ?id $?ids)))
 (id-current_id  ?head ?current_id)
 (current_id-group_members ?current_id $?grp_mems)
 (test (neq ?id ?current_id))
 (test (and (member$  ?id $?grp_mems)(member$  ?head $?grp_mems)))
 =>
 	(retract ?f0)
 	(assert (prep_id-relation-anu_ids  ?p ?rel ?current_id ?id1))
 	(printout ?*debug* "map_left_relations  " ?rel"  " ?current_id"  " ?id1 crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule map_right_relations
 ?f0<-(prep_id-relation-anu_ids  $?p ?rel ?id1 ?id)
 (root-verbchunk-tam-chunkids ? ? ? $?ids)
 (test (not (member$ ?id $?ids)))
 (id-current_id  ?head ?current_id)
 (current_id-group_members ?current_id $?grp_mems)
 (test (neq ?id ?current_id))
 (test (and (member$  ?id $?grp_mems)(member$  ?head $?grp_mems)))
  =>
 	(retract ?f0)
 	(assert (prep_id-relation-anu_ids  $?p ?rel ?id1 ?current_id))
 	(printout ?*debug* "map_right_relations  " ?rel"  " ?id1 "  "?current_id crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule delete_relations
 ?f0<-(prep_id-relation-anu_ids  ? ?rel ?id ?id)
 =>
 	(retract ?f0)
 	(printout ?*debug* "delete_relations " crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule end
 (declare (salience -10))
 =>
	(close ?*debug*)
	(close ?*agmt_cntrl_file*)
        (close ?*pada_cntrl_file*)
 )
 ;-------------------------------------------------------------------------------------------------------------
