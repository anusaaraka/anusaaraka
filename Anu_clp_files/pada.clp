 (defglobal ?*debug* = pada_info_debug)
 (defglobal ?*agmt_cntrl_file* = agmt_cntrl_fp)
 (defglobal ?*pada_cntrl_file* = pada_cntrl_fp)
 
 (deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

 ;----------------------------------------------------------------------------------------------------------------------
 (deffunction print_in_ctrl_fact_files (?paxa_head)
        (printout       ?*agmt_cntrl_file*      "(agmt_control_fact     "       ?paxa_head      ")"     crlf)
        (printout       ?*pada_cntrl_file*      "(pada_control_fact     "       ?paxa_head      ")"     crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------------
 (defrule retract_cntrl_fact
 (declare (salience 2000))
 (has_been_included_in_paxa ?id)
 ?f<-(to_be_included_in_paxa ?id)
 =>
        (printout ?*debug*   "(Rule_name-group_head_id-pada_type-gids      retract_cntrl_fact )" crlf)
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
        (printout ?*debug*   "(Rule_name-group_head_id-pada_type-gids    conj_list   " ?conj"  PP  " (implode$  $?ids) ")" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 ;Added by Roja (25-02-11)
 ;It is sometimes difficult to reconcile science and religion.
 ;The black and white cat sleeps.
 (defrule conj_comp_rule
 (declare (salience 1010))
 (conjunction-components  ?conj  ?id $?id1)
 (conjunction-comp ?conj $?IDS)
 (root-verbchunk-tam-chunkids ? ? ? $?ids ?kri) ; Added by Maha 
 (test (and (eq (member$ ?kri $?id1) FALSE) (neq ?kri ?id))) ; Added by Maha
 ?f<-(to_be_included_in_paxa ?i)
 =>
        (print_in_ctrl_fact_files  ?conj)
 	(if (eq ?i ?conj) then
       		(retract ?f)
       		(assert (pada_info (group_head_id ?conj) (group_cat PP) (group_ids $?IDS)(pada_head ?conj)))
       		(printout ?*debug*   "(Rule_name-group_head_id-pada_type-gids	   conj_comp_rule   "?conj"  PP  " (implode$  $?IDS) ")"  crlf)
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
 	(printout ?*debug*   "(Rule_name-group_head_id-pada_type-gids    kriyA_pada  "?kri"   VP   " (implode$  $?ids) " " ?kri ")" crlf)
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
 	(printout ?*debug*   "(Rule_name-group_head_id-pada_type-gids   to-infinitive_pada  " ?inf"  infinitive  " ?to "  " ?inf ")"  crlf) 
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
        (printout ?*debug*   "(Rule_name-group_head_id-pada_type-gids    RaRTI_viSeRaNa_rule1" ?viSeRaNa"   PP   " ?viSeRaNa  ")" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju (31-03-11)
 ; if saMjFA is  conj then add saMjFA_samAnAXikaraNa to the conj pada 
 ; (conjunction-components  4 3 7) and (saMjFA-saMjFA_samAnAXikaraNa  7 5)
 ; Actress Whoopi Goldberg and singer Michael Jackson attended the ceremony. 
 (defrule saMjFA_samAnAXikaraNa_rule
 (declare (salience 1002))
 ?f1<-(prep_id-relation-anu_ids   ?   saMjFA-saMjFA_samAnAXikaraNa  ?id1 ?id)
 (conjunction-comp ?head $?ids)
 ?f2<-(pada_info (group_head_id ?viSeRya)(group_ids  $?ids)(group_cat ?gtype)(pada_head ?PH))
 ?f<-(to_be_included_in_paxa ?id)
 (test (member$ ?id1 $?ids))
  =>
        (retract ?f1 ?f ?f2)
        (bind $?ids (sort > (create$   $?ids ?id)))
        (modify ?f2 (group_ids $?ids))
        (printout ?*debug*   "(Rule_name-group_head_id-pada_type-gids   saMjFA_samAnAXikaraNa_rule " ?PH"  "  ?gtype  "  " (implode$  $?ids)   ")" crlf)
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
        (printout ?*debug*   "(Rule_name-group_head_id-pada_type-gids    RaRTI_viSeRaNa_rule " ?viSeRya"   PP   " ?viSeRya   ")"  crlf)
        (assert (pada_info (group_head_id ?viSeRaNa) (group_cat PP) (group_ids  ?viSeRaNa)(pada_head ?viSeRaNa)))
        (printout ?*debug*   "(Rule_name-group_head_id-pada_type-gids    RaRTI_viSeRaNa_rule  " ?viSeRaNa"    PP  " ?viSeRaNa  ")"  crlf)
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
	(printout ?*debug*   "(Rule_name-group_head_id-pada_type-gids    asserted_who   10000  PP  10000 )" crlf)
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
 	(printout ?*debug*   "(Rule_name-group_head_id-pada_type-gids   subject_insertion 10001 10001 )" crlf)
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
	(printout ?*debug*   "(Rule_name-group_head_id-pada_type-gids   subject_conjunction_insert 10000 10000 )" crlf)
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
 	(printout ?*debug*   "(Rule_name-group_head_id-pada_type-gids    PP_pada  " ?PP  "   VP  "?PP ")"  crlf)
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
 	(printout ?*debug*   "(Rule_name-group_head_id-pada_type-gids    PP_pada1  " ?PP"  PP   " ?PP  ")" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 ;John Stuart Mill is an important author. 
 (defrule PP_pada2
 (declare (salience 1001))
 ?f1<-(prep_id-relation-anu_ids  ?  ?rel ?id ?id1)
 (test (or (eq ?rel proper_noun-waxviSiRta_proper_noun) (eq ?rel idiom_type_1)(eq ?rel saMKyA-saMKyA)))
 ?f2<-(pada_info (group_head_id ?viSeRya)(group_ids  $?grp_ids)(group_cat ?gtype)(pada_head ?PH))
 ?f<-(to_be_included_in_paxa ?id)
 (test (member$ ?id1 $?grp_ids))
  =>
 	(retract ?f1 ?f ?f2)
 	(bind $?grp_ids (sort > (create$   $?grp_ids ?id)))
 	(modify ?f2 (group_ids $?grp_ids))
 	(printout ?*debug*   "(Rule_name-group_head_id-pada_type-gids    PP_pada2 " ?PH"   "  ?gtype"  " (implode$  $?grp_ids)  ")" crlf)
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
 ?f<-(to_be_included_in_paxa ?head)
 =>
	(retract ?f)
        (bind ?v1 (string-to-field (str-cat ?v ".1")))
        (modify ?f1 (group_head_id ?v) (group_cat PP) (group_ids  $?ids ?head ?v)(pada_head ?v1))
        (printout ?*debug*   "(Rule_name-group_head_id-pada_type-gids    ol_grouped_ids_pada   "?v "  PP   " ?head" " ?v  ")" crlf)
        (bind ?len (length $?ids))
        (loop-for-count (?i 1 ?len) do
                (bind ?j (nth$ ?i $?ids))
                (assert (has_been_included_in_paxa ?j))
        )
 )
 ;-------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju
 (defrule viSeRaNa_pada
 (declare (salience 990))
 ?f0<-(prep_id-relation-anu_ids  ?id  ?rel ?viSeRya1 ?viSeRaNa)
(test (or (eq ?rel viSeRya-det_viSeRaNa)(eq ?rel viSeRya-viSeRaNa)(eq ?rel samAsa)(eq ?rel viSeRya-saMKyA_viSeRaNa)(eq ?rel viSeRaNa-viSeRaka)(eq ?rel idiom_type_1)(eq ?rel proper_noun-waxviSiRta_proper_noun)(eq ?rel viSeRya-wulanAwmaka_viSeRaNa)(eq ?rel saMKyA-saMKyA)(eq ?rel viSeRya-saMKyA_viSeRaNa) (eq ?rel viSeRya-emphatic_marker)(eq ?rel kriyA_viSeRaNa-kriyA_viSeRaNa_viSeRaka)(eq ?rel viSeRaNa-viSeRaka)(eq ?rel viSeRya-viSeRaka)))
 ?f<-(to_be_included_in_paxa ?viSeRaNa)
 ?f1<-(pada_info (group_head_id ?viSeRya)(group_ids  $?grp_ids)(group_cat ?gtype)(pada_head ?PH))
 (test (member$ ?viSeRya1 $?grp_ids))
 (id-word ?viSeRya ?w) ;Added by Shirisha Manju (21-10-11)
 =>
	(retract ?f)
	(bind ?PH (str-cat ?PH ""))
	(if (eq (str-index "." ?PH) FALSE ) then
		(bind ?PH (string-to-field (str-cat ?viSeRya ".1")))
	        (bind $?grp_ids (sort > (create$  $?grp_ids ?viSeRaNa)))
		(modify ?f1 (group_ids $?grp_ids)(pada_head ?PH))
		(if (neq ?w and) then ;Added by Shirisha Manju 
	       	(printout ?*debug*   "(Rule_name-group_head_id-pada_type-gids    viSeRaNa_pada " ?PH"   "?gtype "  " (implode$  $?grp_ids)  ")"  crlf)
		)
	else
	        (bind ?pos (str-index "." ?PH))	;?PH=5.1 , ?pos=2
        	(bind ?sub-str (string-to-field (sub-string (+ ?pos 1) (length ?PH) ?PH))) ; ?sub-str=1
        	(bind ?PH (string-to-field (str-cat (sub-string 1 ?pos ?PH) (+ 1 ?sub-str)))); ?PH=5.2
		(bind $?grp_ids (sort > (create$  $?grp_ids ?viSeRaNa)))
                (modify ?f1 (group_ids $?grp_ids)(pada_head ?PH))
		(if (neq ?w and) then  ;Added by Shirisha Manju 
                (printout ?*debug*   "(Rule_name-group_head_id-pada_type-gids   viSeRaNa_pada " ?PH"   "?gtype"  " (implode$  $?grp_ids) ")" crlf)
		)
	)
 )
 ;-------------------------------------------------------------------------------------------------------------
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
        (printout ?*debug*   "(Rule_name-group_head_id-pada_type-gids    test_for_prep    "?prep_saM " "?prep_id  ")" crlf)
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
 ;Modified by Shirisha Manju (30-03-11) 
 (defrule default_pada
 (declare (salience 980))
 ?f<-(to_be_included_in_paxa ?PP)
 (not (id-cat_coarse ?PP preposition))
 =>
        (retract ?f)
        (print_in_ctrl_fact_files  ?PP)
        (assert (pada_info (group_head_id ?PP) (group_cat PP) (group_ids  ?PP)(pada_head ?PP)))
        (printout ?*debug*   "(Rule_name-group_head_id-pada_type-gids    default_pada   "?PP "   PP  "?PP  ")"  crlf)
 )
 ;----------------------------------------------------------------------------------------------------------------- 
 ;Added by Shirisha Manju (20-10-11)
 ;Are a dog and a cat here? Your house and garden are very attractive.
 (defrule pada_for_and
 (declare (salience 800))
 (pada_info (group_head_id ?and) (group_cat PP) (group_ids $?ids ?id ?and $?ids1 ?id1) )
 ?f0<-(id-word ?and and) 
 =>
	(retract ?f0)
	(bind ?len (length $?ids)) 
	(bind ?len1 (length $?ids1))
	(bind ?p_h (string-to-field (str-cat ?id "." ?len)))
	(bind ?p_h1 (string-to-field (str-cat ?id1 "." ?len1)))
	(assert (pada_info (group_head_id ?id) (group_cat PP_intermediate) (group_ids $?ids ?id ) (pada_head ?p_h)))
	(assert (pada_info (group_head_id ?id1) (group_cat PP_intermediate) (group_ids $?ids1 ?id1 ) (pada_head ?p_h1)))
	(assert (pada_info (group_head_id ?and) (group_cat PP_intermediate) (group_ids ?p_h ?and ?p_h1))) 
	(printout ?*debug*   "(Rule_name-group_head_id-pada_type-gids    pada_for_and  " ?p_h"   "PP_intermediate "  " (implode$  $?ids)"  " ?id  ")"  crlf)
	(printout ?*debug*   "(Rule_name-group_head_id-pada_type-gids    pada_for_and  " ?p_h1"   "PP_intermediate "  " (implode$  $?ids1)"  " ?id1  ")"  crlf)
	(printout ?*debug*   "(Rule_name-group_head_id-pada_type-gids    pada_for_and  " ?and"   "PP "  " ?p_h "  " ?and "  "?p_h1  ")"  crlf)
  )	
  
