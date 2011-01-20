 (defglobal ?*debug* = pada_point_debug)

 (deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (slot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

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
 ?f<- (conjunction-components  ?conj  ?id ?id1)
 (not (conjunction-comp ?conj $?IDS))
 =>
 (retract ?f)
 (bind $?ids (sort > (create$ ?id ?conj ?id1)))
 (assert (conjunction-comp ?conj $?ids))
 (printout ?*debug*  " conj_list  " ?conj" " (implode$  $?ids) crlf)
 )
 ;------------------------------------------------------------------------------------------------------------- 
 (defrule conj_list1
 (declare (salience 1010))
 ?f<-(conjunction-components  ?conj  ?id ?id1)
 ?f2<-(conjunction-comp ?conj $?IDS)
  =>
 (retract  ?f)
 (if (eq (member$ ?id $?IDS) FALSE) then
 (retract ?f2)
 (bind $?IDS (sort > (create$  $?IDS ?id)))
 (assert (conjunction-comp ?conj  $?IDS))
 else
 (if (eq (member$ ?id1 $?IDS) FALSE) then
 (retract ?f2)
 (bind $?IDS (sort > (create$  $?IDS ?id)))
 (assert (conjunction-comp ?conj  $?IDS))))
 (printout ?*debug*  "conj_list1  " ?conj" " (implode$  $?IDS) crlf)
 )
 ;------------------------------------------------------------------------------------------------------------- 
 (defrule kriyA_pada
 (declare (salience 1002))
 (root-verbchunk-tam-chunkids ? ? ? $?ids ?kri)
 ?f<-(to_be_included_in_paxa ?kri)
  =>
 (retract ?f)
 (assert (pada_info (group_head_id ?kri) (group_cat VP) (group_ids $?ids ?kri)(pada_head ?kri)))
 (bind ?len (length $?ids))
 (loop-for-count (?i 1 ?len)
                  (bind ?j (nth$ ?i $?ids))
                  (assert (has_been_included_in_paxa ?j))
 )
; (bind ?kri1 (str-cat ?kri ".2"))
; (bind ?kri1 (string-to-field ?kri1))
 (assert (id-current_id  ?kri ?kri))
 (assert (current_id-group_members ?kri $?ids ?kri)) 
 (printout ?*debug*  "kriyA_pada "?kri" " (implode$  $?ids) " " ?kri crlf)
 )
 ;------------------------------------------------------------------------------------------------------------- 
 (defrule to-infinitive_pada
 (declare (salience 1001))
 ?f0<-(relation-anu_ids to-infinitive  ?to ?inf)
 ?f<-(to_be_included_in_paxa ?inf)
 ?f1<-(to_be_included_in_paxa ?to) 
 =>
 (retract ?f ?f1)
 (assert (pada_info (group_head_id ?inf) (group_cat infinitive) (group_ids  ?to ?inf)(pada_head ?inf)))
 (assert (id-current_id  ?inf ?inf))  
 (assert (current_id-group_members ?inf ?to ?inf))
 (printout ?*debug*  "to-infinitive_pada" ?inf" " ?to "  " ?inf crlf) 
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule asserted_who
 (declare (salience 1000))
 ?f<-(relation-anu_ids viSeRya-jo_samAnAXikaraNa ?vi ?jo)
 (id-original_word 10000 who)
 (not (has_been_included_in_paxa 10000))
 =>
        (assert (has_been_included_in_paxa 10000))
        (assert (pada_info (group_head_id 10000)(group_cat PP)(group_ids 10000)(pada_head 10000)))
        (assert (id-current_id  10000 10000))
        (assert (current_id-group_members 10000 10000))
	(printout ?*debug*  "asserted_who 10000 10000 " crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule subject_insertion
 (declare (salience 1000))
 ?f<-(relation-anu_ids kriyA-subject  ?kriyA 10001)
 (not (has_been_included_in_paxa 10001))
 =>
 ;       (retract ?f)
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
 ?f<-(relation-anu_ids kriyA-conjunction  ?sub 10000)
 (not (has_been_included_in_paxa 10000))
 =>
 ;       (retract ?f)
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
 ?f1<-(relation-anu_ids  ?rel  ?kri ?PP)
 (test (or (eq ?rel kriyA-subject)(eq ?rel kriyA-object)(eq ?rel saMjFA-saMjFA_samAnAXikaraNa)(eq ?rel subject-subject_samAnAXikaraNa)(eq ?rel kriyA-kriyA_viSeRaNa)(eq ?rel kriyA-upasarga)(eq ?rel kriyA-dummy_subject)(eq ?rel saMKyA-saMKyA))) 
 ?f<-(to_be_included_in_paxa ?PP)
  => 
 (retract ?f )
 (assert (pada_info (group_head_id ?PP) (group_cat PP) (group_ids  ?PP)(pada_head ?PP)))
 (assert (id-current_id  ?PP ?PP))
 (assert (current_id-group_members ?PP ?PP))
 (printout ?*debug* "PP_pada " ?PP " "?PP crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule PP_pada1
 (declare (salience 1000))
 ?f1<-(relation-anu_ids  ?rel  ?kri ?PP)
 (test (neq (str-index "-" ?rel)  FALSE))
 (test (neq (str-index "_" ?rel)  FALSE))
 (test (or (eq (sub-string 1 (- (str-index "-" ?rel) 1) ?rel) "kriyA") (eq (sub-string 1 (- (str-index "-" ?rel) 1) ?rel) "viSeRya")))
 (test (eq (sub-string (+ (+ (str-index "-" ?rel) 1) (- (str-index "_" ?rel)  (str-index "-" ?rel))) (length ?rel) ?rel) "saMbanXI"))
 ?f<-(to_be_included_in_paxa ?PP)
  =>
 (retract ?f )
 (assert (pada_info (group_head_id ?PP) (group_cat PP) (group_ids  ?PP)(pada_head ?PP)))
 (assert (id-current_id  ?PP ?PP))
 (assert (current_id-group_members ?PP ?PP))
 (printout ?*debug* "PP_pada1" ?PP" " ?PP crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule PP_pada2
 (declare (salience 1000))
 ?f2<-(relation-anu_ids  viSeRya-RaRTI_viSeRaNa  ?viSeRya ?viSeRaNa)
  ?f<-(to_be_included_in_paxa ?viSeRya)
 ?f1<-(to_be_included_in_paxa ?viSeRaNa)
  =>
 (retract ?f )
 (assert (pada_info (group_head_id ?viSeRya) (group_cat PP) (group_ids  ?viSeRya)(pada_head ?viSeRya)))
 (assert (id-current_id  ?viSeRya ?viSeRya))
 (assert (current_id-group_members ?viSeRya ?viSeRya))
 (printout ?*debug* "PP_pada2" ?viSeRya"  " ?viSeRya crlf)
 (assert (pada_info (group_head_id ?viSeRaNa) (group_cat PP) (group_ids  ?viSeRaNa)(pada_head ?viSeRaNa)))
 (assert (id-current_id  ?viSeRaNa ?viSeRaNa))
 (assert (current_id-group_members ?viSeRaNa ?viSeRaNa))
 (printout ?*debug* "PP_pada2" ?viSeRaNa"  " ?viSeRaNa crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule PP_pada3
 (declare (salience 1001))
 ?f1<-(relation-anu_ids  ?rel ?id ?id1)
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
 (printout ?*debug* "PP_pada3" ?PH" " (implode$  $?grp_ids) crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule viSeRaNa_pada
 (declare (salience 990))
 ?f0<-(relation-anu_ids  ?rel ?viSeRya1 ?viSeRaNa)
 (test (or (eq ?rel viSeRya-det_viSeRaNa)(eq ?rel viSeRya-viSeRaNa)(eq ?rel samAsa)(eq ?rel viSeRya-saMKyA_viSeRaNa)(eq ?rel viSeRaNa-viSeRaka)(eq ?rel idiom_type_1)(eq ?rel proper_noun-waxviSiRta_proper_noun)(eq ?rel viSeRya-wulanAwmaka_viSeRaNa)(eq ?rel saMKyA-saMKyA)(eq ?rel viSeRya-saMKyA_viSeRaNa) (eq ?rel viSeRya-emphatic_marker)))
 ?f<-(to_be_included_in_paxa ?viSeRaNa)
 ?f1<-(pada_info (group_head_id ?viSeRya)(group_ids  $?grp_ids)(group_cat ?gtype)(pada_head ?PH))
 ?f2<-(id-current_id  ?viSeRya ?current_id)
 ?f3<-(current_id-group_members ?current_id $?grp_ids)
 (test (member$ ?viSeRya1 $?grp_ids))
  =>
 	(retract ?f0 ?f ?f2 ?f3)
	(if (eq ?viSeRya ?current_id) then
 		(bind ?PH (str-cat ?viSeRya ".1"))
 		(bind ?PH (string-to-field ?PH))
		(bind $?grp_ids (sort > (create$  $?grp_ids ?viSeRaNa)))
		(assert (pada_info(group_head_id ?viSeRya) (group_ids  $?grp_ids)(group_cat ?gtype)(pada_head ?PH)))
 		(assert (id-current_id  ?viSeRya ?PH))
 		(assert (current_id-group_members ?PH $?grp_ids))
		(printout ?*debug* "viSeRaNa_pada" ?PH" " (implode$  $?grp_ids) crlf)
	else
 		(bind ?PH (str-cat ?PH ""))
 		(bind ?pos (str-index "." ?PH))
 		(bind ?sub-str (sub-string (+ ?pos 1) (length ?PH) ?PH))
 		(bind ?sub-str (+ 1 (string-to-field ?sub-str)))
 		(bind ?PH (string-to-field (str-cat (sub-string 1 ?pos ?PH) ?sub-str)))
 		(bind $?grp_ids (sort > (create$  $?grp_ids ?viSeRaNa)))
 		(assert (pada_info(group_head_id ?viSeRya) (group_ids  $?grp_ids)(group_cat ?gtype)(pada_head ?PH)))
 		(assert (id-current_id  ?viSeRya ?PH))
 		(assert (current_id-group_members ?PH $?grp_ids))
		(printout ?*debug* "viSeRaNa_pada" ?PH" " (implode$  $?grp_ids) crlf)
 	)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule viSeRaNa-viSeRaka_rule
 (declare (salience 988))
 ?f0<-(relation-anu_ids  viSeRaNa-viSeRaka|viSeRya-viSeRaka ?viSeRaNa ?viSeRaka)
 ?f<-(to_be_included_in_paxa ?viSeRaka)
 ?f1<-(pada_info (group_head_id ?viSeRya)(group_ids  $?grp_ids)(group_cat ?gtype)(pada_head ?PH))
 ?f2<-(id-current_id  ?viSeRya ?current_id)
 ?f3<-(current_id-group_members ?current_id $?grp_ids)
 (test (member$ ?viSeRaNa $?grp_ids))
  =>
 	(retract ?f0 ?f ?f2 ?f3)
 	(if (eq ?viSeRya ?current_id) then
 		(bind ?PH (str-cat ?viSeRya ".1"))
 		(bind ?PH (string-to-field ?PH))
 		(bind $?grp_ids (sort > (create$  $?grp_ids ?viSeRaka)))
 		(assert (pada_info(group_head_id ?viSeRya) (group_ids  $?grp_ids)(group_cat ?gtype)(pada_head ?PH)))
 		(assert (id-current_id  ?viSeRya ?PH))
 		(assert (current_id-group_members ?PH $?grp_ids))
		(printout ?*debug* "viSeRaNa-viSeRaka_rule "?PH "  " (implode$  $?grp_ids) crlf)
	else
 		(bind ?PH (str-cat ?PH ""))
 		(bind ?pos (str-index "." ?PH))
 		(bind ?sub-str (sub-string (+ ?pos 1) (length ?PH) ?PH))
 		(bind ?sub-str (+ 1 (string-to-field ?sub-str)))
 		(bind ?PH (string-to-field (str-cat (sub-string 1 ?pos ?PH) ?sub-str)))
 		(bind $?grp_ids (sort > (create$  $?grp_ids ?viSeRaka)))
 		(assert (pada_info(group_head_id ?viSeRya) (group_ids  $?grp_ids)(group_cat ?gtype)(pada_head ?PH)))
 		(assert (id-current_id  ?viSeRya ?PH))
 		(assert (current_id-group_members ?PH $?grp_ids))
		(printout ?*debug* "viSeRaNa-viSeRaka_rule "?PH "  " (implode$  $?grp_ids) crlf)
 ))
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_kriyA_pada
 (declare (salience 980))
 ?f0<-(relation-anu_ids ?rel ?kri ?id) 
 (test (and (neq ?rel kriyA-karwA)(neq ?rel kriyA-vAkyakarma)))
 (test (neq (str-index "-" ?rel)  FALSE))
 (test (eq (sub-string 1 (str-index "-" ?rel) ?rel) "kriyA-"))
 (not (root-verbchunk-tam-chunkids ? ? ? $?ids ?kri))
 (not (id-word ?kri and|or))
 ?f1<-(pada_info (group_head_id ?kri)(group_ids  $?grp_ids)(group_cat ?gtype)(pada_head ?PH))
 ?f2<-(pada_info (group_head_id ?id)(group_ids  $?grp_ids1)(pada_head ?ph))
 ?f3<-(id-current_id  ?kri ?current_id)
 ?f4<-(current_id-group_members ?current_id $?grp_ids)
 ?f5<-(id-current_id  ?id ?current_id1)
 ?f6<-(current_id-group_members ?current_id1 $?grp_ids1)
 (test (eq (member$ ?id $?grp_ids) FALSE))
  =>
 	(retract ?f3 ?f4 ?f5 ?f6) 
 	(if (eq ?kri ?current_id) then
 		(bind ?PH (str-cat ?kri ".1"))
 		(bind ?PH (string-to-field ?PH))
 		(bind $?grp_ids (sort < (create$  $?grp_ids ?grp_ids1)))
 		(assert (pada_info(group_head_id ?kri) (group_ids  $?grp_ids)(group_cat ?gtype)(pada_head ?PH)))
 		(assert (id-current_id  ?kri ?PH))
 		(assert (current_id-group_members ?PH $?grp_ids))
		(printout ?*debug* "non_finite_kriyA_pada "?PH "  " (implode$  $?grp_ids) crlf)
 	else
 		(bind ?PH (str-cat ?PH ""))
 		(bind ?pos (str-index "." ?PH))
 		(bind ?sub-str (sub-string (+ ?pos 1) (length ?PH) ?PH))
 		(bind ?sub-str (+ 1 (string-to-field ?sub-str)))
 		(bind ?PH (string-to-field (str-cat (sub-string 1 ?pos ?PH) ?sub-str)))
 		(bind $?grp_ids (sort < (create$  $?grp_ids ?grp_ids1)))
 		(assert (pada_info(group_head_id ?kri) (group_ids  $?grp_ids)(group_cat ?gtype)(pada_head ?PH)))
 		(assert (id-current_id  ?kri ?PH))
 		(assert (current_id-group_members ?PH $?grp_ids))
		(printout ?*debug* "non_finite_kriyA_pada "?PH "  " (implode$  $?grp_ids) crlf)
 ))
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_kriyA_pada1
 (declare (salience 980))
 ?f0<-(relation-anu_ids saMjFA-kqxanwa ?id ?kri)
 (not (root-verbchunk-tam-chunkids ? ? ? $?ids ?kri))
 ?f1<-(pada_info (group_head_id ?kri)(group_ids  $?grp_ids)(group_cat ?gtype)(pada_head ?PH))
 ?f2<-(pada_info (group_head_id ?id)(group_ids  $?grp_ids1)(pada_head ?ph))
 ?f3<-(id-current_id  ?kri ?current_id)
 ?f4<-(current_id-group_members ?current_id $?grp_ids)
 ?f5<-(id-current_id  ?id ?current_id1)
 ?f6<-(current_id-group_members ?current_id1 $?grp_ids1)
 (test (eq (member$ ?id $?grp_ids) FALSE))
  =>
 	(retract ?f3 ?f4 ?f5 ?f6)
 	(if (eq ?kri ?current_id) then
 		(bind ?PH (str-cat ?kri ".1"))
 		(bind ?PH (string-to-field ?PH))
 		(bind $?grp_ids (sort < (create$  $?grp_ids ?grp_ids1)))
 		(assert (pada_info(group_head_id ?kri) (group_ids  $?grp_ids)(group_cat ?gtype)(pada_head ?PH)))
 		(assert (id-current_id  ?kri ?PH))
 		(assert (current_id-group_members ?PH $?grp_ids))
 		(printout ?*debug* "non_finite_kriyA_pada1 "?PH "  " (implode$  $?grp_ids) crlf)
 	else
 		(bind ?PH (str-cat ?PH ""))
 		(bind ?pos (str-index "." ?PH))
 		(bind ?sub-str (sub-string (+ ?pos 1) (length ?PH) ?PH))
 		(bind ?sub-str (+ 1 (string-to-field ?sub-str)))
 		(bind ?PH (string-to-field (str-cat (sub-string 1 ?pos ?PH) ?sub-str)))
 		(bind $?grp_ids (sort < (create$  $?grp_ids ?grp_ids1)))
 		(assert (pada_info(group_head_id ?kri) (group_ids  $?grp_ids)(group_cat ?gtype)(pada_head ?PH)))
 		(assert (id-current_id  ?kri ?PH))
 		(assert (current_id-group_members ?PH $?grp_ids))
		(printout ?*debug* "non_finite_kriyA_pada1 "?PH "  " (implode$  $?grp_ids) crlf)
 ))
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_kriyA_pada2
 (declare (salience 979))
 ?f0<-(relation-anu_ids  viSeRya-RaRTI_viSeRaNa ?id ?id1)
; (not (root-verbchunk-tam-chunkids ? ? ? $?ids ?kri))
 ?f1<-(pada_info (group_head_id ?kri)(group_ids  $?grp_ids)(group_cat ?gtype)(pada_head ?PH))
 (test (or (eq ?gtype infinitive) (eq ?gtype VP)))
 (not (root-verbchunk-tam-chunkids ? ? ? $?ids ?kri))
 ?f2<-(pada_info (group_head_id ?id1)(group_ids  $?grp_ids1)(pada_head ?ph))
 (test (member$ ?id $?grp_ids))
 ?f3<-(id-current_id  ?kri ?current_id)
 ?f4<-(current_id-group_members ?current_id $?grp_ids)
 ?f5<-(id-current_id  ?id1 ?current_id1)
 ?f6<-(current_id-group_members ?current_id1 $?grp_ids1)
 =>
 (retract ?f3 ?f4 ?f5 ?f6)
 (if (eq ?kri ?current_id) then
 (bind ?PH (str-cat ?kri ".1"))
 (bind ?PH (string-to-field ?PH))
 (bind $?grp_ids (sort < (create$  $?grp_ids ?grp_ids1)))
 (assert (pada_info(group_head_id ?kri) (group_ids  $?grp_ids)(group_cat ?gtype)(pada_head ?PH)))
 (assert (id-current_id  ?kri ?PH))
 (assert (current_id-group_members ?PH $?grp_ids))
 		(printout ?*debug* "non_finite_kriyA_pada2 "?PH "  " (implode$  $?grp_ids) crlf)
 else
 (bind ?PH (str-cat ?PH ""))
 (bind ?pos (str-index "." ?PH))
 (bind ?sub-str (sub-string (+ ?pos 1) (length ?PH) ?PH))
 (bind ?sub-str (+ 1 (string-to-field ?sub-str)))
 (bind ?PH (string-to-field (str-cat (sub-string 1 ?pos ?PH) ?sub-str)))
 (bind $?grp_ids (sort < (create$  $?grp_ids ?grp_ids1)))
 (assert (pada_info(group_head_id ?kri) (group_ids  $?grp_ids)(group_cat ?gtype)(pada_head ?PH)))
 (assert (id-current_id  ?kri ?PH))
 (assert (current_id-group_members ?PH $?grp_ids))
 		(printout ?*debug* "non_finite_kriyA_pada2 "?PH "  " (implode$  $?grp_ids) crlf)
 ))
 ;-------------------------------------------------------------------------------------------------------------
 (defrule test_for_prep
 (declare (salience 970))
 (link_name-lnode-rnode   Js|Jp|J|JG|Jw|IN|ON|OF|Mgp  ?prep   ?paxa_head)
 ?f<-(to_be_included_in_paxa ?prep)
 ?f1<-(pada_info (group_head_id ?pada_head)(group_ids  $?grp_ids)(group_cat ?gtype)(pada_head ?PH)(preposition 0))
  =>
 (retract ?f)
 (modify ?f1 (preposition ?prep))
 (assert (pada_head-preposition_id ?pada_head ?prep))
 	(printout ?*debug* "test_for_prep "?pada_head " "?prep crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule test_for_prep1
 (declare (salience 981))
 (link_name-lnode-rnode    MVt ?   ?prep)
 (link_name-lnode-rnode    Opc|Osc ?prep   ?pada_head)
 ?f<-(to_be_included_in_paxa ?prep)
 ?f1<-(pada_info (group_head_id ?pada_head)(group_ids  $?grp_ids)(group_cat ?gtype)(pada_head ?PH)(preposition 0))
  =>
 (retract ?f)
 (modify ?f1 (preposition ?prep))
 (assert (pada_head-preposition_id ?pada_head ?prep))
	(printout ?*debug* "test_for_prep1 "?pada_head " "?prep crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule default_pada
 (declare (salience 980))
 ?f<-(to_be_included_in_paxa ?PP)
 (not (id-cat_coarse ?PP preposition))
 =>
 (retract ?f)
 (assert (pada_info (group_head_id ?PP) (group_cat PP) (group_ids  ?PP)(pada_head ?PP)))
 (assert (id-current_id  ?PP ?PP))
 (assert (current_id-group_members ?PP ?PP))
 (printout ?*debug* "default_pada "?PP " "?PP crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule default_pada1
 (declare (salience 950))
 ?f<-(to_be_included_in_paxa ?PP)
 (not (modify_group_ids_with_conj_id-current_id ?PP ?j))
 =>
 (retract ?f)
 (assert (pada_info (group_head_id ?PP) (group_cat PP) (group_ids  ?PP)(pada_head ?PP)))
 (assert (id-current_id  ?PP ?PP))
 (assert (current_id-group_members ?PP ?PP))
 (printout ?*debug* "default_pada1 "?PP " "?PP crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule get_eng_word_list
 (declare (salience 950))
 (id-word ?id ?word)
 ?f1<-(index ?id)
 ?f<-(Eng_sen $?Eng_list)
 =>
 (retract ?f ?f1)
 (bind ?word (str-cat ?word ""))
 (assert (Eng_sen $?Eng_list ?word))
 (bind ?id (+ ?id 1))
 (assert (index ?id))
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule test_for_conj
 (declare (salience 940))
 ?f0<-(id-current_id  ?id ?current_id)
 ?f1<-(current_id-group_members ?current_id $?grp_ids)
 ?f2<-(pada_info (group_head_id ?i)(group_ids  $?grp_ids)(group_cat PP)(pada_head ?PH)(preposition ?prep))
 ?f3<-(id-word ?id3 neither|either)
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
 (defrule test_for_non_finite_kriyA
 (declare (salience 970))
 ?f0<-(relation-anu_ids ?rel ?kri ?id)
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
 (printout ?*debug* "test_for_non_finite_kriyA "?kri "  " (implode$  $?grp_mems)  crlf)
)
 ;-------------------------------------------------------------------------------------------------------------
 (defrule test_for_non_finite_kriyA1
 (declare (salience 969))
 ?f0<-(relation-anu_ids to-infinitive ?to ?kri)
 (not (root-verbchunk-tam-chunkids ? ? ? $?ids ?kri))
 ?f1<-(id-current_id  ?kri ?current_id)
 (current_id-group_members ?current_id $?grp_mems)
 (test (member$ ?kri $?grp_mems))
 (not (Search ?kri $?grp_mems))
  =>
 (assert  (non_finte_verb_unordered_list ?kri $?grp_mems))
 (assert (Search ?kri $?grp_mems))
 (printout ?*debug* "test_for_non_finite_kriyA1 "?kri "  " (implode$  $?grp_mems) crlf)
)
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_order1-1
 (declare (salience 960))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(relation-anu_ids kriyA-object ?id1 ?id)
 (test (and (member$ ?id $?grp_mems)(member$ ?id1 $?grp_mems)))
 =>
 (retract ?f0  ?f1)
 (bind $?grp_mems (delete-member$ $?grp_mems ?id))
 (bind ?pos (member$ ?id1  $?grp_mems))
 (printout t ?pos $?grp_mems)
 (bind $?grp_mems (insert$ $?grp_mems ?pos ?id))
 (assert (non_finte_verb_unordered_list ?kri $?grp_mems))
 (printout ?*debug* "non_finite_order1-1 "?kri "  " (implode$  $?grp_mems) crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_order1-2
 (declare (salience 961))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(relation-anu_ids saMjFA-kqxanwa ?id1 ?kri)
 (test (and (member$ ?kri $?grp_mems)(member$ ?id1 $?grp_mems)))
 =>
 (retract ?f0 ?f1)
 (bind $?grp_mems (delete-member$ $?grp_mems ?kri))
 (bind ?pos (member$ ?id1  $?grp_mems))
 (printout t ?pos $?grp_mems)
 (bind $?grp_mems (insert$ $?grp_mems ?pos ?kri))
 (assert (non_finte_verb_unordered_list ?kri $?grp_mems))
 (printout ?*debug* "non_finite_order1-2 "?kri "  " (implode$  $?grp_mems) crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_order1-3
 (declare (salience 959))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(relation-anu_ids viSeRya-RaRTI_viSeRaNa ?id1 ?id)
 (test (and (member$ ?id $?grp_mems)(member$ ?id1 $?grp_mems)))
 =>
 (retract ?f0 ?f1)
 (bind $?grp_mems (delete-member$ $?grp_mems ?id))
  (bind ?pos (member$ ?id1  $?grp_mems))
 (printout t ?pos $?grp_mems)
 (bind $?grp_mems (insert$ $?grp_mems ?pos ?id))
 (assert (non_finte_verb_unordered_list ?kri $?grp_mems))
 (printout ?*debug* "non_finite_order1-3 "?kri "  " (implode$  $?grp_mems) crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_order2
 (declare (salience 960))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(relation-anu_ids  ?rel ?kri ?id)
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
 (printout ?*debug* "non_finite_order2 "?kri "  " (implode$  $?grp_mems) crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_order3
 (declare (salience 960))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(kriyA-conjunction ?kri ?id)
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
 (printout ?*debug* "non_finite_order3 "?kri "  " (implode$  $?grp_mems) crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_order4
 (declare (salience 955))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(samAsa ?id1 ?id)
 (test (and(member$ ?id $?grp_mems) (member$ ?id1 $?grp_mems)))
 =>
 (retract ?f0 ?f1)
 (bind $?grp_mems (delete-member$ $?grp_mems ?id))
 (bind ?pos (member$ ?id1 $?grp_mems))
 (bind $?grp_mems (insert$ $?grp_mems ?pos ?id))
 (assert (non_finte_verb_unordered_list ?kri $?grp_mems))
 (printout ?*debug* "non_finite_order4 "?kri "  " (implode$  $?grp_mems) crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_order5
 (declare (salience 955))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(viSeRya-viSeRaNa ?id1 ?id)
 (test (and(member$ ?id $?grp_mems) (member$ ?id1 $?grp_mems)))
 =>
 (retract ?f0 ?f1)
 (bind $?grp_mems (delete-member$ $?grp_mems ?id))
 (bind ?pos (member$ ?id1 $?grp_mems))
 (bind $?grp_mems (insert$ $?grp_mems ?pos ?id))
 (assert (non_finte_verb_unordered_list ?kri $?grp_mems))
 (printout ?*debug* "non_finite_order5 "?kri "  " (implode$  $?grp_mems) crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_order6
 (declare (salience 955))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(viSeRya-wulanAwmaka_viSeRaNa ?id1 ?id)
 (test (and(member$ ?id $?grp_mems) (member$ ?id1 $?grp_mems)))
 =>
 (retract ?f0 ?f1)
 (bind $?grp_mems (delete-member$ $?grp_mems ?id))
 (bind ?pos (member$ ?id1 $?grp_mems))
 (bind $?grp_mems (insert$ $?grp_mems ?pos ?id))
 (assert (non_finte_verb_unordered_list ?kri $?grp_mems))
 (printout ?*debug* "non_finite_order6 "?kri "  " (implode$  $?grp_mems) crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_order7
 (declare (salience 956))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(viSeRya-det_viSeRaNa ?id1 ?id)
 (test (and(member$ ?id $?grp_mems) (member$ ?id1 $?grp_mems)))
 =>
 (retract ?f0 ?f1)
 (bind $?grp_mems (delete-member$ $?grp_mems ?id))
 (bind ?pos (member$ ?id1 $?grp_mems))
 (bind $?grp_mems (insert$ $?grp_mems ?pos ?id))
 (assert (non_finte_verb_unordered_list ?kri $?grp_mems))
 (printout ?*debug* "non_finite_order7 "?kri "  " (implode$  $?grp_mems) crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_order8
 (declare (salience 956))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(viSeRaNa-viSeRaka ?id1 ?id)
 (test (and(member$ ?id $?grp_mems) (member$ ?id1 $?grp_mems)))
 =>
 (retract ?f0 ?f1)
 (bind $?grp_mems (delete-member$ $?grp_mems ?id))
 (bind ?pos (member$ ?id1 $?grp_mems))
 (bind $?grp_mems (insert$ $?grp_mems ?pos ?id))
 (assert (non_finte_verb_unordered_list ?kri $?grp_mems))
 (printout ?*debug* "non_finite_order8 "?kri "  " (implode$  $?grp_mems) crlf)
 )
 ;------------------------------------------------------------------------------------------------------------- 
 (defrule non_finite_order9
 (declare (salience 956))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(to-infinitive ?id ?id1)
 (test (and(member$ ?id $?grp_mems) (member$ ?id1 $?grp_mems)))
 =>
 (retract ?f0 ?f1)
 (bind $?grp_mems (delete-member$ $?grp_mems ?id))
 (bind ?pos (member$ ?id1 $?grp_mems))
 (bind $?grp_mems (insert$ $?grp_mems ?pos ?id))
  (assert (non_finte_verb_unordered_list ?kri $?grp_mems))
 (printout ?*debug* "non_finite_order9 "?kri "  " (implode$  $?grp_mems) crlf)
)
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_order10
 (declare (salience 956))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(object-object_samAnAXikaraNa ?id1 ?id)
 (test (and(member$ ?id $?grp_mems) (member$ ?id1 $?grp_mems)))
 =>
 (retract ?f0 ?f1)
 (bind $?grp_mems (delete-member$ $?grp_mems ?id1))
 (bind ?pos (member$ ?id $?grp_mems))
 (bind $?grp_mems (insert$ $?grp_mems ?pos ?id1))
 (assert (non_finte_verb_unordered_list ?kri $?grp_mems))
 (printout ?*debug* "non_finite_order10 "?kri "  " (implode$  $?grp_mems) crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule non_finite_order11
 (declare (salience 955))
 ?f0<-(non_finte_verb_unordered_list ?kri $?grp_mems)
 ?f1<-(kriyA-kriyA_niReXaka ?id1 ?id)
 (test (and(member$ ?id $?grp_mems) (member$ ?id1 $?grp_mems)))
 =>
 (retract ?f0 ?f1)
 (bind $?grp_mems (delete-member$ $?grp_mems ?id))
 (bind ?pos (member$ ?id1 $?grp_mems))
 (bind $?grp_mems (insert$ $?grp_mems ?pos ?id))
 (assert (non_finte_verb_unordered_list ?kri $?grp_mems))
 (printout ?*debug* "non_finite_order11 "?kri "  " (implode$  $?grp_mems) crlf)
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
 (printout ?*debug* "non_finite_order12 "?kri "  " (implode$  $?grp_mems) crlf)
)
 ;-------------------------------------------------------------------------------------------------------------
 (defrule conj_components
 (declare (salience 900))
 ?f0<-(conjunction-comp  ?conj $?IDS1 ?s1 $?IDS)
 ?f3<-(id-current_id  ?s1 ?current_id)
 ?f4<-(current_id-group_members ?current_id $?grp_ids)
 =>
 (if (eq ?s1 ?conj) then
 (retract ?f0 ?f3)
 else
 (retract ?f3 ?f4 ?f0))
 (assert (conjunction-comp  ?conj $?IDS1  $?grp_ids $?IDS))
 (printout ?*debug* "conj_components "?conj" " (implode$  $?IDS1)" "  (implode$ $?grp_ids)" " (implode$ $?IDS) crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule conj_components1
 (declare (salience 890))
 ?f0<-(conjunction-comp  ?conj $?IDS1)
 ?f1<-(current_id-group_members ?conj ?conj)
 ?f2<-(pada_info (group_head_id ?conj)(group_ids  ?conj)(group_cat PP)(pada_head ?conj))
 =>
 (retract  ?f1 ?f2)
 (assert (current_id-group_members ?conj $?IDS1))
 (printout ?*debug* "conj_components1 "?conj" " (implode$  $?IDS1) crlf)
 (assert (pada_info (group_head_id ?conj)(group_ids $?IDS1)(group_cat PP)(pada_head ?conj))))
 ;-------------------------------------------------------------------------------------------------------------
 (defrule saMjFA-saMjFA_samAnAikaraNa_rule1
 (declare (salience 899))
 ?f1<-(relation-anu_ids saMjFA-saMjFA_samAnAXikaraNa ?saMjFA_id ?saMjFA_samAnAikaraNa_id)
 (conjunction-comp  ?conj $?components)
;  ?f2<-(id-current_id  ?conj ?current_id)
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
        (bind ?pos 1))
        (bind $?grp_ids (insert$ $?grp_ids ?pos ?saMjFA_samAnAikaraNa_id))
        (assert (current_id-group_members ?conj $?grp_ids))
  	(printout ?*debug* "saMjFA-saMjFA_samAnAikaraNa_rule1 "?conj" " (implode$  $?grp_ids) crlf)
        (assert (pada_info (group_head_id ?conj)(group_ids $?grp_ids)(group_cat PP)(pada_head ?conj)))
  )
 ;-------------------------------------------------------------------------------------------------------------
 (defrule map_left_relations
 ?f0<-(relation-anu_ids ?rel ?id ?id1)
 (root-verbchunk-tam-chunkids ? ? ? $?ids)
 (test (not (member$ ?id $?ids)))
 (id-current_id  ?head ?current_id)
 (current_id-group_members ?current_id $?grp_mems)
 (test (neq ?id ?current_id))
 (test (and (member$  ?id $?grp_mems)(member$  ?head $?grp_mems)))
  =>
 (retract ?f0)
 (assert (relation-anu_ids ?rel ?current_id ?id1))
 (printout ?*debug* "map_left_relations " ?rel"  " ?current_id"  " ?id1 crlf)
)
 
 ;-------------------------------------------------------------------------------------------------------------
 (defrule map_right_relations
 ?f0<-(relation-anu_ids ?rel ?id1 ?id)
 (root-verbchunk-tam-chunkids ? ? ? $?ids)
 (test (not (member$ ?id $?ids)))
 (id-current_id  ?head ?current_id)
 (current_id-group_members ?current_id $?grp_mems)
 (test (neq ?id ?current_id))
 (test (and (member$  ?id $?grp_mems)(member$  ?head $?grp_mems)))
  =>
 (retract ?f0)
 (assert (relation-anu_ids ?rel ?id1 ?current_id))
 (printout ?*debug* "map_right_relations " ?rel"  " ?id1 "  "?current_id crlf)
)
 ;-------------------------------------------------------------------------------------------------------------
 (defrule delete_relations
 ?f0<-(relation-anu_ids ?rel ?id ?id)
 =>
 (retract ?f0)
 (printout ?*debug* "delete_relations " crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
