(defglobal ?*error_file* = err_fp)
(defglobal ?*gnp_debug* = gnp_fp)


(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

 (deffacts dummy_facts
 (id-inserted_sub_id)  
 (prep_id-relation-anu_ids)
 (missing-level-id) 
 (id-original_word) 
 (id-number-src) 
 (verb_type-verb-causative_verb-tam) 
 (addition-level-word-sid) 
 (conjunction-components)
 (id-wsd_number) 
 (affecting_id-affected_ids-wsd_group_root_mng)
 (affecting_id-affected_ids-wsd_group_word_mng)
 (id-last_word) 
 (verb_agrmt-subject_id-head_id)
 (verb_agrmt-object_id-head_id) 
 (verb_agrmt-head_id)
 (id-gender-src)
 (id-original_word)
 (id-HM-source)
 (No complete linkages found)
 )

 ;================================ PP pada for vibakthi=0 and vibhakti!=0 ======================================

 ; If "I"  then  gender=m number=s and peson=u
 (defrule PP_pada_for_I
 (declare (salience 1000))
 ?f1<-(pada_info (group_head_id ?pada_id)(group_cat PP)(group_ids $?ids)(vibakthi ?vib))
 (id-original_word ?pada_id I|i)
 ?f0<-(pada_control_fact ?pada_id)
 =>
	(retract ?f0)
	(if (eq ?vib 0) then
		(modify ?f1 (gender m)(number s)(person u)(case d))
        (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-per_src-case  " ?pada_id " PP_pada_for_I  m Direct_assignment s Direct_assignment u Direct_assignment d vibakthi_absent )" crlf)
	else			
	        (modify ?f1 (gender m)(number s)(person u)(case o))
        (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-per_src-GNP-case  " ?pada_id " PP_pada_for_I m Direct_assignment s Direct_assignment u Direct_assignment d vibakyhi_present )" crlf)
	)
 )
 ;----------------------------------------------------------------------------------------------------------------
 ; If "He"  then  gender = m,  number = s and peson = a
 (defrule PP_pada_for_He
 (declare (salience 1000))
 ?f1<-(pada_info (group_head_id ?pada_id)(group_cat PP)(group_ids $?ids)(vibakthi ?vib))
  (id-original_word ?pada_id He|he)
 ?f0<-(pada_control_fact ?pada_id)
 =>
        (retract ?f0)
	(if (eq ?vib 0) then
		(modify ?f1 (gender m)(number s)(person a)(case d))
       (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-per_src-GNP-case  " ?pada_id " PP_pada_for_He  m Direct_assignment s Direct_assignment a Direct_assignment d vibakthi_absent )" crlf)
	else
	        (modify ?f1 (gender m)(number s)(person a)(case o))
       (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-per_src-GNP-case  " ?pada_id " PP_pada_for_He  m Direct_assignment s Direct_assignment a Direct_assignment o vibakthi_present )" crlf)
	)
 )
 ;----------------------------------------------------------------------------------------------------------------
 ; If "She"  then  gender = f,  number = s  and peson = a
 (defrule PP_pada_for_She
 (declare (salience 1000))
 ?f1<-(pada_info (group_head_id ?pada_id)(group_cat PP)(group_ids $?ids)(vibakthi ?vib))
 (id-original_word ?pada_id She|she)
 ?f0<-(pada_control_fact ?pada_id)
 =>
	(retract ?f0)
	(if (eq ?vib 0) then
		(modify ?f1 (gender f)(number s)(person a)(case d))
        (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-per_src-case  " ?pada_id " PP_pada_for_She  f Direct_assignment s Direct_assignment a Direct_assignment d vibakthi_absent )" crlf)
	else
        (modify ?f1 (gender f)(number s)(person a)(case o))
        (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-per_src-GNP-case  " ?pada_id " PP_pada_for_She f Direct_assignment s Direct_assignment a Direct_assignment o vibakthi_present )" crlf)
	)
 )
 ;----------------------------------------------------------------------------------------------------------------
 (defrule PP_pada_for_we
 (declare (salience 1000))
 ?f1<-(pada_info (group_head_id ?pada_id)(group_cat PP)(group_ids $?ids)(vibakthi ?vib))
 (id-original_word ?pada_id  We|we)
 (id-gender-src ?pada_id ?gen ?gen_src)
 ?f0<-(pada_control_fact ?pada_id)
 =>
	(retract ?f0)
	(if (eq ?vib 0) then
		(modify ?f1  (gender ?gen)(number p)(person u)(case d))
        (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-per_src-case  " ?pada_id " PP_pada_for_we "?gen" "?gen_src " p Direct_assignment u Direct_assignment d vibakthi_absent )" crlf)
	else
		(modify ?f1 (gender ?gen)(number p)(person u)(case o))
        (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-per_src-case  " ?pada_id " PP_pada_for_we  " ?gen " "?gen_src " p  Direct_assignment u Direct_assignment o vibakthi_present  )" crlf)
	)
 )
 ;----------------------------------------------------------------------------------------------------------------
 (defrule PP_pada_for_they
 (declare (salience 1000))
 ?f1<-(pada_info (group_head_id ?pada_id)(group_cat PP)(group_ids $?ids)(vibakthi ?vib))
 (id-original_word ?pada_id  They|they)
 (id-gender-src ?pada_id ?gen ?gen_src)
 ?f0<-(pada_control_fact ?pada_id)
 =>
        (retract ?f0)
        (if (eq ?vib 0) then
                (modify ?f1  (gender ?gen)(number p)(person a)(case d))
        (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-per_src-case  " ?pada_id " PP_pada_for_they  " ?gen " "?gen_src "  p Direct_assignment a Direct_assignment d vibakthi_absent)" crlf)
        else
                (modify ?f1 (gender ?gen)(number p)(person a)(case o))
       (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-per_src-case  " ?pada_id " PP_pada_for_they  "?gen" " ?gen_src "  p Direct_assignment u Direct_assignment o vibakthi_present)" crlf)
        )
 )
 ;----------------------------------------------------------------------------------------------------------------
 (defrule PP_pada_for_you
 (declare (salience 1000))
 ?f1<-(pada_info (group_head_id ?pada_id)(group_cat PP)(group_ids $?ids)(vibakthi ?vib))
 (id-original_word ?pada_id  you|You)
 (id-gender-src ?pada_id ?gen ?gen_src)
 ?f0<-(pada_control_fact ?pada_id)
 (id-HM-source ?pada_id ?hmng ?)
 =>
	(retract ?f0)
        (if (eq ?hmng Apa) then
 		(modify ?f1 (gender ?gen)(number p)(person a)(case o))
        (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-per_src-case  " ?pada_id " PP_pada_for_you  " ?gen" "?gen_src " p Direct_assignment a Direct_assignment o vibakthi_present)" crlf)
	else
                (modify ?f1 (gender ?gen)(number p)(person m)(case o))
        (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-per_src-case  " ?pada_id " PP_pada_for_you  "?gen" " ?gen_src "  p Direct_assignment m Direct_assignment o vibakthi_present )" crlf)
	)
  )
 ;----------------------------------------------------------------------------------------------------------------
 ;Ex. There are three boys and four girls in the park . Added by Sukhada.
 (defrule PP_pada_for_and
 (declare (salience 910))
 ?f1<- (pada_info (group_head_id ?pada_id)(group_cat PP)(group_ids $?word_ids) (vibakthi ?vib))
 (id-original_word ?pada_id and)
 (id-gender-src ?pada_id ?gen ?gen_src)
; (prep_id-relation-anu_ids  ? kriyA-subject  ?k ?pada_id)
; (id-number-src ?k ? Default)
 ?f0<-(pada_control_fact ?pada_id)
 =>
	(retract ?f0) 
	(if (eq ?vib 0) then
                (modify ?f1 (gender ?gen)(number p)(person a)(case d))
        (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-per_src-case  " ?pada_id " PP_pada_for_and "?gen" "?gen_src "p and_pada a  Direct_assignment d vibakthi_absent )" crlf)
        else
                (modify ?f1 (gender ?gen)(number p)(person a)(case o))
        (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-per_src-case  " ?pada_id " PP_pada_for_and  " ?gen" "?gen_src " p and_pada  a Direct_assignment o vibakthi_present)" crlf)
        )
 )
 ;----------------------------------------------------------------------------------------------------------------
 ; default peson = a
 (defrule PP_pada
 (declare (salience 900))
 ?f1<-(pada_info (group_head_id ?pada_id)(group_cat PP)(group_ids $?ids)(vibakthi ?vib))
 (id-original_word ?pada_id  ?pada_head)
 (id-gender-src ?pada_id ?gen ?gen_src)
 (id-number-src ?pada_id ?num ?num_src)
 ?f0<-(pada_control_fact ?pada_id)
 =>
	(retract ?f0)
        (if (eq ?vib 0) then
	        (modify ?f1 (gender ?gen)(number ?num)(person a)(case d))
        (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-per_src-case  " ?pada_id " PP_pada  "?gen" "?gen_src " "?num" "?num_src " a  Direct_assignment d vibakthi_absent )" crlf)
	else 
        	(modify ?f1 (gender ?gen)(number ?num)(person a)(case o))
        (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-per_src-case  " ?pada_id " PP_pada  " ?gen" "?gen_src " "?num" "?num_src" a Direct_assignment o vibakthi_present)" crlf)
	)
 )
 ;========================================= Infinitive pada ================================================
 (defrule PP_pada_vib_inf
 (declare (salience 900))
 ?f1<-(pada_info (group_head_id ?pada_id)(group_cat infinitive)(vibakthi ?vib))
 (id-original_word ?pada_id  ?pada_head)
 (id-gender-src ?pada_id ?gen ?gen_src)
 (id-number-src ?pada_id ?num ?num_src)
 ?f0<-(pada_control_fact ?pada_id)
 =>
        (retract ?f0)
	(if (eq ?vib 0 ) then
	        (modify ?f1 (gender ?gen)(number ?num)(person a)(case d))
        (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-per_src-case  " ?pada_id " PP_pada_vib_inf  " ?gen" "?gen_src " "?num" "?num_src" a Direct_assignment d vibakthi_absent)" crlf)
	else 
		(modify ?f1 (gender ?gen)(number ?num)(person a)(case o))
        (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-per_src-case  " ?pada_id " PP_pada_vib_inf  " ?gen" "?gen_src " "?num" "?num_src" a Direct_assignment o vibakthi_present)" crlf)
	)
 )
 ;================================== subject-subject_samAnAXikaraNa ==========================================
 ; if subject gen is "-" and samAnAXikaraNa gen is not equal to "-"
 (defrule samAnAXikaraNa_rule
 (declare (salience 800))
 (prep_id-relation-anu_ids ? subject-subject_samAnAXikaraNa|saMjFA-saMjFA_samAnAXikaraNa ?sub_id ?samAnAXikaraNa_id)
 ?f1<-(pada_info (group_head_id ?samAnAXikaraNa_id)(group_cat PP)(gender ?gen)(number ?num1))
 ?f2<-(pada_info (group_head_id ?sub_id)(group_cat PP)(gender -)(number ?num)(person ?per)(case ?case))
 (not(samAnAXikaraNa_id_checked ?samAnAXikaraNa_id))
 =>
         (modify ?f1 (gender ?gen)(number ?num)(person ?per))
         (modify ?f2 (gender ?gen) )
         (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-person_src-GNP_modified " ?samAnAXikaraNa_id " samAnAXikaraNa_rule "?gen" PV "?num" number_from_subject "?per " person_from_subject )" crlf)
	(printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-person_src-GNP_modified  " ?sub_id " samAnAXikaraNa_rule "?gen" gender_from_samAnAXikaraNa  "?num" PV "?per " PV)" crlf)
	(assert (samAnAXikaraNa_id_checked ?samAnAXikaraNa_id))
 )

 ; if  samAnAXikaraNa gen is "-" and subject gen is not equal to "-"
 (defrule samAnAXikaraNa_rule_1
 (declare (salience 790))
 (prep_id-relation-anu_ids ? subject-subject_samAnAXikaraNa|saMjFA-saMjFA_samAnAXikaraNa ?sub_id ?samAnAXikaraNa_id)
 ?f1<-(pada_info (group_head_id ?samAnAXikaraNa_id)(group_cat PP)(vibakthi ?vib)(gender -)(number ?num1))
 ?f2<-(pada_info (group_head_id ?sub_id)(group_cat PP)(gender ?gen)(number ?num)(person ?per)(case ?case))
 (not(samAnAXikaraNa_id_checked ?samAnAXikaraNa_id))
 =>
	 (modify ?f1 (gender ?gen)(number ?num)(person ?per))
         (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-person_src-GNP_modified " ?samAnAXikaraNa_id " samAnAXikaraNa_rule_1 "?gen " gender_from_subject "?num"  number_from_subject "?per"  person_from_subject)" crlf)
	(assert (samAnAXikaraNa_id_checked ?samAnAXikaraNa_id))
 )
	
 ; if  samAnAXikaraNa gen is "-" and subject gen is "-"
 (defrule samAnAXikaraNa_rule_2
 (declare (salience 780))
 (prep_id-relation-anu_ids ? subject-subject_samAnAXikaraNa|saMjFA-saMjFA_samAnAXikaraNa ?sub_id ?samAnAXikaraNa_id)
 ?f1<-(pada_info (group_head_id ?samAnAXikaraNa_id)(group_cat PP)(vibakthi ?vib)(gender -)(number ?num1))
 ?f2<-(pada_info (group_head_id ?sub_id)(group_cat PP)(gender -)(number ?num)(person ?per)(case ?case))
 (not(samAnAXikaraNa_id_checked ?samAnAXikaraNa_id))
 =>
	 (modify ?f1 (gender -)(number ?num)(person ?per))
         (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-person_src-GNP_modified " ?samAnAXikaraNa_id " samAnAXikaraNa_rule_2 - PV "?num"  number_from_subject "?per" person_from_subject )" crlf)
	(assert (samAnAXikaraNa_id_checked ?samAnAXikaraNa_id))
 )
 ; if  samAnAXikaraNa gen is not equal to "-" and subject gen is not equal to "-" but the gender for both is same
 (defrule samAnAXikaraNa_rule_3
 (declare (salience 770))
 (prep_id-relation-anu_ids ? subject-subject_samAnAXikaraNa|saMjFA-saMjFA_samAnAXikaraNa ?sub_id ?samAnAXikaraNa_id)
 ?f1<-(pada_info (group_head_id ?samAnAXikaraNa_id)(group_cat PP)(vibakthi ?vib)(gender ?gen1)(number ?num1))
 ?f2<-(pada_info (group_head_id ?sub_id)(group_cat PP)(gender ?gen)(number ?num)(person ?per)(case ?case))
 (not(samAnAXikaraNa_id_checked ?samAnAXikaraNa_id))
 (test (and (neq ?gen1 -)(neq ?gen -)(eq ?gen ?gen1)))
 =>
	(modify ?f1 (gender ?gen)(number ?num)(person ?per))
	(printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-person_src-GNP_modified " ?samAnAXikaraNa_id " samAnAXikaraNa_rule_3 "?gen" PV "?num" number_from_subject "?per" person_from_subject )" crlf)
	(assert (samAnAXikaraNa_id_checked ?samAnAXikaraNa_id))
 )
  ; if  samAnAXikaraNa gen is not equal to "-" and subject gen is not equal to "-" but the gender for both is different
 (defrule samAnAXikaraNa_rule_4
 (declare (salience 760))
 (prep_id-relation-anu_ids ? subject-subject_samAnAXikaraNa|saMjFA-saMjFA_samAnAXikaraNa ?sub_id ?samAnAXikaraNa_id)
 ?f1<-(pada_info (group_head_id ?samAnAXikaraNa_id)(group_cat PP)(vibakthi ?vib)(gender ?gen1)(number ?num1))
 ?f2<-(pada_info (group_head_id ?sub_id)(group_cat PP)(gender ?gen)(number ?num)(person ?per)(case ?case))
 (not(samAnAXikaraNa_id_checked ?samAnAXikaraNa_id))
 (test (and (neq ?gen1 -)(neq ?gen -)(neq ?gen ?gen1)))
 =>
	 (printout  ?*error_file* crlf "The ids " ?sub_id " and " ?samAnAXikaraNa_id" have saMjFA-saMjFA_samAnAikaraNa relation "crlf "And the gender information for the ids are different ---------   " ?sub_id"-"?gen "  "?samAnAXikaraNa_id "-" ?gen1 crlf "if saMjFA id ("?sub_id") word is \"She\" then consider gender as f "crlf "else By default considering the samAnAXikaraNa id gender i.e., "?samAnAXikaraNa_id " - " ?gen1 crlf crlf)
                 (close ?*error_file*)
        (modify ?f1 (gender ?gen1)(number ?num)(person ?per))
        (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-person_src-GNP_modified " ?samAnAXikaraNa_id " samAnAXikaraNa_rule_4 "?gen1" PV "?num " number_from_subject "?per"  person_from_subject )" crlf)
	(assert (samAnAXikaraNa_id_checked ?samAnAXikaraNa_id))
 )

 ;========================================== Relative Clause Rule ==============================================

 (defrule jo_samAnAXikaraNa_rule
 (declare (salience 850))
 (prep_id-relation-anu_ids ? viSeRya-jo_samAnAXikaraNa  ?sub_id ?id)
 ?f2<-(pada_info (group_head_id ?sub_id)(group_cat PP)(gender ?gen) (number ?num)(person ?per)(case ?case))
 ?f1<-(pada_info (group_head_id ?id)(group_cat PP)(vibakthi ?vib))
 (not (jo_samAnAXikaraNa_checked ?id))
 =>
	(if (eq ?vib 0) then
		(modify ?f1 (gender ?gen) (number ?num) (case d) (person ?per))
        (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-person_src-GNP_modified " ?id " jo_samAnAXikaraNa_rule " ?gen" gender_from_viSeRya "?num" number_from_viSeRya "?per " person_from_viSeRya )" crlf)
	else
		(modify ?f1 (gender ?gen) (number ?num) (case o) (person ?per))
        (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-person_src-case-GNP_modified " ?id " jo_samAnAXikaraNa_rule "?gen" gender_from_viSeRya "?num" number_from_viSeRya "?per" person_from_viSeRya )" crlf)
	)
  (assert (jo_samAnAXikaraNa_checked ?id))
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;The cat sat on a mat and scratched itself loudly .(2nd-parse)
 ;Added by Mahalaxmi(24-04-10)
 (defrule subject_insertion_rule
 (declare (salience 850))
 ?f0<-(id-HM-source 10001 ?h_mng ?src)
 (id-inserted_sub_id  10001  ?sub_id) ;Modified (id-HM-source-sub_id) fact to (id-inserted_sub_id) ;Modified by Mahalaxmi (07-04-11)
 ?f1<-(pada_info (group_head_id ?sub_id)(group_cat PP)(gender ?gen) (number ?num)(person ?per)(case ?case))
 ?f2<-(pada_info (group_head_id 10001)(group_cat PP)(vibakthi ?vib))
 =>
 (retract ?f0)
 (if (eq ?vib 0) then
                (modify ?f2 (gender ?gen) (number ?num) (case d) (person ?per))
        (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-person_src-GNP  10001  subject_insertion_rule" ?gen" gender_from_subject "?num" number_from_subject "?per " person_from_subject )" crlf)
        else
                (modify ?f2 (gender ?gen) (number ?num) (case o) (person ?per))
        (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-person_src-case-GNP  10001  subject_insertion_rule "?gen" gender_from_subject "?num" number_from_subject "?per" person_from_subject )" crlf)
        )
 )
 
 ;======================================= verb with or_subject agreement =======================================
 ;Are John or I invited ? 
 (defrule verb_or_sub_agmt
 (declare (salience 750))
 (verb_agrmt-subject_id-head_id or_subject ?sub_id ?kriyA)
 ?f1<-(pada_info (group_head_id ?kriyA)(group_cat VP))
 (id-gender-src ?sub_id ?gen ?)
 (id-number-src ?sub_id ?num ?)
 (id-original_word ?sub_id ?word)
 (pada_info (group_head_id ?id)(group_cat PP)(person ?per) (group_ids $?ids))
 ?f0<-(pada_control_fact ?kriyA)
 (test (member$ ?sub_id $?ids))
 =>
        (retract ?f0 )
        (if (or (eq ?word i) (eq ?word I) (eq ?word we)) then
            (modify ?f1 (gender ?gen)(number ?num)(person u))
        else
           (modify ?f1 (gender ?gen)(number ?num)(person ?per))
	)
	(printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-person_src-VRB_GNP " ?kriyA " verb_or_sub_agmt "?gen" gender_from_subject "?num"  number_from_subject "?per" person_from_subject)" crlf)
 )

 ;===================================  verb with subject agreement ============================================
 (defrule verb_sub_agmt
 (declare (salience 700))
 (verb_agrmt-subject_id-head_id subject ?sub_id ?kriyA)
 ?f1<-(pada_info (group_head_id ?kriyA)(group_cat VP))
 ?f2<-(pada_info (group_head_id ?sub_id)(group_cat PP)(gender ?gen)(number ?num)(person ?per))
 ?f0<-(pada_control_fact ?kriyA)
 (id-number-src ?kriyA ?num1 ?src)
 =>
        (retract ?f0 )
	(if (neq ?src Default) then
	        (modify ?f1 (gender ?gen)(number ?num1)(person ?per))
        	(modify ?f2 (number ?num1))
		(printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-person_src-VRB_GNP " ?kriyA " verb_sub_agmt "?gen" gender_from_subject "?num1"  number_from_verb "?per" person_from_subject)" crlf)
	else
		(modify ?f1 (gender ?gen)(number ?num)(person ?per))
		(printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-person_src-VRB_GNP " ?kriyA " verb_sub_agmt "?gen" gender_from_subject "?num"  number_from_subject "?per" person_from_subject)" crlf)
        )
;        (modify ?f1 (gender ?gen)(number ?num)(person ?per))
 ;(printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-person_src-VRB_GNP " ?kriyA " verb_sub_agmt "?gen" gender_from_subject "?num"  number_from_subject "?per" person_from_subject)" crlf)
 )

 ;=================================  verb with object agreement ================================================
 (defrule verb_obj_agmt
 (declare (salience 700))
 (verb_agrmt-object_id-head_id object ?obj_id ?kriyA)
 ?f1<-(pada_info (group_head_id ?kriyA)(group_cat VP))
 (pada_info (group_head_id ?obj_id)(group_cat PP)(gender ?gen)(number ?num)(person ?per))
 ?f0<-(pada_control_fact ?kriyA)
 =>
        (retract ?f0)
        (modify ?f1 (gender ?gen)(number ?num)(person ?per))
  (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-person_src-VRB_GNP " ?kriyA " verb_obj_agmt "?gen" gender_from_object "?num" number_from_object "?per" person_from_object)" crlf)
 )

 ;=================================  verb with kriyA_mUla agreement =============================================
 (defrule verb_kriyA_mUla_agmt
 (declare (salience 700))
 (verb_agrmt-head_id  kriyA_mula ?pada_id ?gen)
 ?f1<-(pada_info (group_head_id ?pada_id)(group_cat VP))
 (id-number-src ?pada_id ?num ?num_src)
 ?f0<-(pada_control_fact ?pada_id)
 =>
        (retract ?f0)
        (modify ?f1 (gender ?gen)(number ?num)(person a))
  (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-person_src-VRB_GNP " ?pada_id " verb_kriyA_mUla_agmt  "?gen" gender_from_kriyA_mula "?num " "?num_src " a Direct_assignment)" crlf)
 )

 ;===================================  verb with default agreement and viSeRya-kqxanwa_viSeRaNa ===================
 ;The girl running to the shop is my friend .                      
 (defrule verb_with_viSeRya_kqxanwa_viSeRaNa
 (declare (salience 650))
 (verb_agrmt-head_id default ?pada_id)
 (prep_id-relation-anu_ids  ? viSeRya-kqxanwa_viSeRaNa ?vi ?pada_id)
 (pada_info (group_head_id ?vi)(gender ?gen) (number ?num)(person ?per))
 ?f1<-(pada_info (group_head_id ?pada_id)(group_cat VP))
 ?f0<-(pada_control_fact ?pada_id)
 =>
	(retract ?f0)
	(modify ?f1 (gender ?gen)(number ?num)(person ?per))
 (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-person_src-VRB_GNP " ?pada_id " verb_with_viSeRya_kqxanwa_viSeRaNa "?gen" gender_from_viSeRya "?num "number_from_viSeRya " ?per "person_from_viSeRya)" crlf)
 )
 ;==================================  verb with default agreement =================================================
 (defrule verb_default_agmt1
 (declare (salience 600))
 (verb_agrmt-head_id default ?pada_id)
 ?f1<-(pada_info (group_head_id ?pada_id)(group_cat VP))
 ?f0<-(pada_control_fact ?pada_id)
 =>
        (retract ?f0)
        (modify ?f1 (gender m)(number s)(person a))
 (printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-person_src-VRB_GNP " ?pada_id " verb_default_agmt m Default_assignment s Default_assignment a Default_assignment)" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------
 ;America economic indicators fell sharply last month .
 ;The party that night was a big success.  Last week I saw a great movie .
 (defrule case_for_kAlavAcI
 (declare (salience 890))
 ?f1<-(pada_info (group_head_id ?pada_id)(group_cat PP)(group_ids $?ids)(vibakthi ?vib))
 ?f0<-(prep_id-relation-anu_ids  ? kriyA-kAlavAcI  ?kri ?pada_id)
 =>
	(retract ?f0)
        (modify ?f1 (case o))
        (printout ?*gnp_debug* "(pada_id-rule_name-case_src " ?pada_id " case_for_kAlavAcI      o       kAlavAcI_relation)" crlf)
 )
 ;------------------------------------------------------------------------------------------------------------------- 
 ; Sita and Gita came here .
 ; Rama and Sita came here .
 ; Added by S.Maha laxmi (17-04-10) Suggested by Sukhada.
 ;In case of a pada having 'and' as its head following are the GNP agreement rules:
 ;1. feminine (F): if all the componants are females. e.g.
 ;   F + F = F
 ;       Sita and Gita came here. > sIwA Ora gIwA yahAz AyIM.
 ;2. mesculine(M) otherwise:
 ;   M + F = M
 ;          Ex.  Rama and Sita came here. > rAma Ora sIwA yahAz Aye.
 ;   M + M = M
 ;          Ex.  Rama and Laxman came here. > rAma Ora Laxman yahAz Aye.
 (defrule gender_for_hyphen_with_head_and
 (declare (salience 5))
 ?f1<-(pada_info (group_head_id ?pada_id)(group_ids $?ids)(group_cat PP))
 (id-gender-src ?id  f ?gen_src)
 (id-gender-src ?id1 m  ?gen_src1)
 (test (and (member$ ?id $?ids) (member$ ?id1 $?ids)))
 (test (and (neq ?id ?pada_id)(neq ?id ?pada_id)))
 (not (prep_id-relation-anu_ids ?p subject-subject_samAnAXikaraNa ? ?pada_id))
 (not (prep_id-relation-anu_ids ?p saMjFA-saMjFA_samAnAikaraNa  ? ?pada_id))
 (not (prep_id-relation-anu_ids ?p viSeRya-jo_samAnAXikaraNa  ? ?pada_id))
 ?f2<-(id-original_word ?pada_id and|And)
 =>
     (retract ?f2)
     (modify ?f1 (gender m))
     (printout ?*gnp_debug* "(pada_id-rule_name-gen_src " ?pada_id " gender_for_hyphen_with_head_and  m  "?gen_src ")" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------
 ;Her hard work and talent will take her to the top .
 ;if gender is - then check for the gen in group ids
 (defrule gender_for_hyphen
 (declare (salience 810))
 ?f1<-(pada_info (group_head_id ?pada_id)(gender -)(group_ids $?ids)(group_cat PP))
 (id-gender-src ?id ?gen ?gen_src)
 (test (member$ ?id $?ids))
 (not (prep_id-relation-anu_ids ?p subject-subject_samAnAXikaraNa ? ?pada_id))
 (not (prep_id-relation-anu_ids ?p saMjFA-saMjFA_samAnAikaraNa  ? ?pada_id))
 (not (prep_id-relation-anu_ids ?p viSeRya-jo_samAnAXikaraNa  ? ?pada_id))
 (test (neq ?gen -))
 =>
 	(modify ?f1 (gender ?gen))
	(printout ?*gnp_debug* "(pada_id-rule_name-gen_src " ?pada_id " gender_for_hyphen  "?gen " "?gen_src ")" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------
 ;John screamed from inside the house .
 (defrule default_gender_m_for_pada
 (declare (salience 10))
 ?f1<-(pada_info (group_head_id ?pada_id)(gender -))
 =>
	(modify ?f1 (gender m))
  (printout ?*gnp_debug* "(pada_id-rule_name-gen_src " ?pada_id " default_gender_m_for_pada  m Default_assignment)" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------
