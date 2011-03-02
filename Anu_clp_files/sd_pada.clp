 (defglobal ?*agmt_cntrl_file* = agmt_cntrl_fp)
 (defglobal ?*pada_cntrl_file* = pada_cntrl_fp)
 (defglobal ?*dbug* = pada_debug_fp)
 (defglobal ?*errfp* = err_file)
 (defglobal ?*p_list* = (create$ ))

 (defrule end
 (declare (salience -100))
 =>
	(close ?*agmt_cntrl_file*)
	(close ?*pada_cntrl_file*)
	(close ?*dbug*)
        (close ?*errfp*)
 )  
 ;--------------------------------------------------------------------------------------------------------------------- 

 (deffunction print_in_ctrl_fact_files (?paxa_head)
	(printout	?*agmt_cntrl_file*	"(agmt_control_fact	"	?paxa_head	")"	crlf)	
	(printout	?*pada_cntrl_file*	"(pada_control_fact	"	?paxa_head	")"	crlf)	
 )
 ;---------------------------------------------------------------------------------------------------------------------
 (deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (slot preposition (default 0))(slot Hin_position (default 0)))
 ;---------------------------------------------------------------------------------------------------------------------
 (defrule pada_count
 (declare (salience 10000))
 (to_be_included_in_paxa 1)
 =>
 (assert (count 0))
 )
 ;---------------------------------------------------------------------------------------------------------------------
  (defrule retract_cntrl_fact
  (declare (salience 2000))
  (has_been_included_in_paxa ?id)
  ?f<-(to_be_included_in_paxa ?id)
  =>
  (retract ?f)
  )
 ;--------------------------------------------------------------------------------------------------------------------- 
 (defrule kriyA_pada
 (declare (salience 1002))
 (root-verbchunk-tam-chunkids ? ? ? $?ids ?kri)
 ?f<-(to_be_included_in_paxa ?kri)
  =>
 (retract ?f)
 (assert (pada_info (group_head_id ?kri) (group_cat VP) (group_ids $?ids ?kri)))
 (printout       ?*dbug* "(Rule_name-pada_head_id-pada_type-ids  kriyA_pada     P"?kri   "	PP	"?kri")"crlf)
 (bind ?len (length $?ids))
 (loop-for-count (?i 1 ?len)
                  (bind ?j (nth$ ?i $?ids))
                  (assert (has_been_included_in_paxa ?j))
 )
 (print_in_ctrl_fact_files ?kri)
 )
 ;---------------------------------------------------------------------------------------------------------------------
 (defrule to-infinitive_pada
 (declare (salience 1002))
 (relation-anu_ids to-infinitive  ?to ?inf)
 ?f<-(to_be_included_in_paxa ?inf)
 ?f1<-(to_be_included_in_paxa ?to) ;Added by Manju
 =>
 (retract ?f ?f1)
 (assert (pada_info (group_head_id ?inf) (group_cat infinitive) (group_ids  ?to ?inf)))
 (printout       ?*dbug* "(Rule_name-pada_head_id-pada_type-ids  to-infinitive_pada     P"?inf   "	PP	" ?to" "?inf ")"crlf)
 (print_in_ctrl_fact_files ?inf)
 )
 ;---------------------------------------------------------------------------------------------------------------------
 (defrule asserted_who
 (relation-anu_ids  viSeRya-jo_samAnAXikaraNa ?vi 10000)
 =>
 (assert (pada_info (group_head_id 10000)(group_cat PP)(group_ids 10000)))
 (printout       ?*dbug* "(Rule_name-pada_head_id-pada_type-ids  asserted_who    P"10000 "       PP      "10000  ")"crlf)
 (print_in_ctrl_fact_files 10000)
 )
 ;The girl you met yesterday is here.  The dog I chased was black.  The man you saw is intelligent.
 ;---------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju
 ;Rule re-modified by Roja (22-02-11) for handling conjunction components in 'and/or' pada.
 (defrule conj_pada_and_or
 (declare (salience 1001))
 (conjunction-components ?and ?id $?ids) ;Modified by Roja(26-01-11) (Removed rel_name-ids fact )
 ?f<-(to_be_included_in_paxa ?id)
 ?f1<-(to_be_included_in_paxa ?id1)
 ?f2<-(to_be_included_in_paxa ?and)
 (id-word ?and and|or)
 (test (member$ ?id1 $?ids))
 =>
	(retract ?f ?f1 ?f2)
        (bind ?list (create$ ))
        (loop-for-count (?i 1 (length $?ids))
                    (bind ?list (create$ ?list (nth$ ?i $?ids)))
        )
        (bind ?list (sort > ?and ?id ?list))
	(assert (pada_info (group_head_id ?and) (group_cat PP) (group_ids  ?list)))
	(printout       ?*dbug* "(Rule_name-pada_head_id-pada_type-ids  conj_pada_and_or    P"?and   "      PP      "?list ")"crlf)
	(print_in_ctrl_fact_files ?and)
 )
 ;Bill is big and honest .  There are three boys and four girls in the park . 
 ;Ulsoor lake is an ideal place for sightseeing, boating and shopping.
 ;---------------------------------------------------------------------------------------------------------------------
 (defrule PP_pada
 (declare (salience 1000))
 (relation-anu_ids  ?rel  ?kri ?PP)
 (test (or (eq ?rel kriyA-subject)(eq ?rel kriyA-object)(eq ?rel saMjFA-saMjFA_samAnAXikaraNa)(eq ?rel subject-subject_samAnAXikaraNa)(eq ?rel kriyA-kriyA_viSeRaNa)(eq ?rel kriyA-upasarga)(eq ?rel to-infinitive)(eq ?rel kriyA-dummy_subject))) 
 ?f<-(to_be_included_in_paxa ?PP)
  => 
 (retract ?f)
 (assert (pada_info (group_head_id ?PP) (group_cat PP) (group_ids  ?PP)))
 (printout       ?*dbug* "(Rule_name-pada_head_id-pada_type-ids  PP_pada     P"?PP   "	PP	" ?PP")"crlf)
 (print_in_ctrl_fact_files ?PP)
 )
 ;---------------------------------------------------------------------------------------------------------------------
 (defrule PP_pada1
 (declare (salience 1000))
 (relation-anu_ids  ?rel  ?kri ?PP)
 (test (neq (str-index "-" ?rel)  FALSE))
 (test (neq (str-index "_" ?rel)  FALSE))
 (test (eq (sub-string 1 (- (str-index "-" ?rel) 1) ?rel) "kriyA"))
 (test (eq (sub-string (+ (+ (str-index "-" ?rel) 1) (- (str-index "_" ?rel)  (str-index "-" ?rel))) (length ?rel) ?rel) "saMbanXI"))
 ?f<-(to_be_included_in_paxa ?PP)
  =>
 (retract ?f)
 (assert (pada_info (group_head_id ?PP) (group_cat PP) (group_ids  ?PP)(preposition 0)))
 (printout       ?*dbug* "(Rule_name-pada_head_id-pada_type-ids  PP_pada1     P"?PP   "	PP	" ?PP")"crlf)
 (print_in_ctrl_fact_files ?PP)
 )
 ;---------------------------------------------------------------------------------------------------------------------
 (defrule PP_pada2
 (declare (salience 1000))
 (relation-anu_ids  ?rel  ?PP ?)
 (test (eq ?rel kriyA-kqxanwa_viSeRaNa))
 ?f<-(to_be_included_in_paxa ?PP)
  =>
 (retract ?f)
 (assert (pada_info (group_head_id ?PP) (group_cat PP) (group_ids  ?PP)))
 (printout       ?*dbug* "(Rule_name-pada_head_id-pada_type-ids  PP_pada2     P"?PP   "	PP	" ?PP")"crlf)
 (print_in_ctrl_fact_files ?PP)
 )
 ;---------------------------------------------------------------------------------------------------------------------
 (defrule viSeRaNa_pada
 (declare (salience 990))
 (relation-anu_ids  ?rel ?viSeRya ?viSeRaNa)
 (test (or (eq ?rel viSeRya-det_viSeRaNa)(eq ?rel viSeRya-viSeRaNa)(eq ?rel samAsa)(eq ?rel kriyA-kqxanwa_viSeRaNa)(eq ?rel viSeRya-saMKyA_viSeRaNa)(eq ?rel viSeRaNa-viSeRaka)))
 ?f<-(to_be_included_in_paxa ?viSeRaNa)
 ?f1<-(pada_info (group_ids  $?id ?viSeRya $?ids)(group_cat PP|infinitive))
   =>
 (retract ?f)
 (bind $?grp_ids (sort > (create$ $?id ?viSeRya $?ids ?viSeRaNa)))
 (modify ?f1 (group_ids $?grp_ids))
 )
 ;Ex : We have very different ideas about disciplining children .
 ;Modified by Shirisha Manju : 
                  ; added viSeRaNa-viSeRaka relation and 
                  ; removed (group_head_id  ?viSeRya) and modified (group_ids $?grp_ids) as (group_ids  $?id ?viSeRya $?ids)
 ;---------------------------------------------------------------------------------------------------------------------
 (defrule RaRTI_viSeRaNa
 (declare (salience 1000))
 (relation-anu_ids  viSeRya-RaRTI_viSeRaNa ?viSeRya ?viSeRaNa)
 ?f<-(to_be_included_in_paxa ?viSeRaNa)
 =>
 (retract ?f)
 (assert (pada_info (group_head_id ?viSeRaNa) (group_cat PP) (group_ids  ?viSeRaNa)(vibakthi kA)))
 (printout       ?*dbug* "(Rule_name-pada_head_id-pada_type-ids  RaRTI_viSeRaNa      P"?viSeRaNa   "	PP	" ?viSeRaNa")"crlf)
 (print_in_ctrl_fact_files ?viSeRaNa)
 )
 ;---------------------------------------------------------------------------------------------------------------------
 ;Modified by Roja(26-01-11)
 (defrule add_single_prep
 (declare (salience 1300))
 (relation-anu_ids   ?rel  ?x ?prep_saM)
 ?f1<-(pada_info (group_head_id ?id)(group_ids $?ids)(preposition 0))
 (test (neq (str-index "-" ?rel)  FALSE))
 (test (neq (str-index "_" ?rel)  FALSE))
 (test (or (eq (sub-string 1 5 ?rel) "kriyA") (eq (sub-string 1 7 ?rel) "viSeRya")))
 (id-word ?prep_id ?w)
 (test (eq (string-to-field (sub-string (+ (str-index "-" ?rel) 1) (- (str-index "_" ?rel) 1) ?rel)) ?w))
 (test (eq (sub-string (+ (str-index  (str-cat ?w "_") ?rel) (length ?w)) 1000 ?rel) "_saMbanXI")) ;to take only single prep  relation. Ex: kriyA-from_saMbanXI
 ?f<-(to_be_included_in_paxa ?prep_id)
 (test(and (or (eq ?prep_saM ?id)(member$ ?prep_saM $?ids))(< ?prep_id ?prep_saM))) ;Ulsoor lake is an ideal place for sightseeing, boating and shopping. I waited for Seeta for hours.
 =>
 (retract ?f)
 (modify ?f1 (preposition  ?prep_id))
 (assert (has_been_decided ?prep_id))
 (assert (has_been_decided ?prep_saM))
)
 ;Ex. Mohan fell from the top of the house. 
 ;---------------------------------------------------------------------------------------------------------------------
 (defrule getting_ids-complex_prep
 (declare (salience -10))
 (relation-anu_ids   ?rel  ?x ?prep_saM)   
 (test (neq (str-index "-" ?rel)  FALSE))
 (test (neq (str-index "_" ?rel)  FALSE))
 (test (or (eq (sub-string 1 5 ?rel) "kriyA") (eq (sub-string 1 7 ?rel) "viSeRya")))
 (test (eq (sub-string (- (length ?rel) 7) 1000 ?rel) "saMbanXI"))
 (not (has_been_decided ?prep_saM))  
 ?f<-(id-word ?id ?word)   
 (not (has_been_decided ?id)) 
 ?f1<-(pada_info (group_head_id ?id)(preposition 0)) ;retracting pada which has prep has head. 
 (test (neq (str-index (str-cat ?word "_") ?rel) FALSE))
 =>	

			(retract ?f ?f1)
                        (bind ?*p_list* (create$ ?*p_list* ?id )) ;Getting ids of complex prep Ex: kriyA-along_with_saMbanXI
                        (bind ?*p_list* (sort > ?*p_list*)) 
                        (printout t ?*p_list*)

 )
 ;It is true that you are my friend but I can not go ALONG WITH you on this issue. 
 ;The people of Orissa are facing grave adversities DUE TO the cyclone. 
 ;---------------------------------------------------------------------------------------------------------------------
 (defrule  add_complex_prep
 (declare (salience -11))
 (relation-anu_ids   ?rel  ?x ?prep_saM)
 ?f1<-(pada_info (group_head_id ?prep_saM)(preposition ?prep))
 (test (neq (str-index "-" ?rel)  FALSE))
 (test (neq (str-index "_" ?rel)  FALSE))
 (test (eq (sub-string (- (length ?rel) 7) 1000 ?rel) "saMbanXI"));relation last part should be saMbanXI else we get kriyA-dummy_subject ,viSeRya-RaRTI_viSeRaNa etc also.
 (not (has_been_decided ?prep_saM))
 =>
	(bind ?len (length ?*p_list*))
           (bind ?pl (str-cat (nth$ 1 ?*p_list*)"_"))
	   (loop-for-count (?i 2 ?len) do
                 (if (< ?i ?len) then 
	  	    (bind ?pl (str-cat ?pl (nth$ ?i ?*p_list* )"_"))
	          else
                    (bind ?pl (str-cat ?pl (nth$ ?i ?*p_list* )))
		 )
           )
	   (modify ?f1  (preposition  (string-to-field ?pl)))
           (assert (has_been_decided ?prep_saM))
 )
 ;It is true that you are my friend but I can not go ALONG WITH you on this issue. 
 ;The people of Orissa are facing grave adversities DUE TO the cyclone. 
 ;---------------------------------------------------------------------------------------------------------------------
 (defrule default_pada
 (declare (salience 11))
 ?f<-(to_be_included_in_paxa ?PP)
  =>
 (retract ?f)
 (assert (pada_info (group_head_id ?PP) (group_cat PP) (group_ids  ?PP)))
 (printout       ?*dbug* "(Rule_name-pada_head_id-pada_type-ids   default_pada	p"?PP	"	PP	" ?PP")"crlf)
 (print_in_ctrl_fact_files ?PP)
 )
 ;---------------------------------------------------------------------------------------------------------------------
