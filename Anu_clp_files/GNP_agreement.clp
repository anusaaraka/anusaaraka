(defglobal ?*error_file* = err_fp)
(defglobal ?*gnp_debug* = gnp_fp)
(defglobal ?*gender* = gender_fp)


(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

 (deffunction never-called ()
 (assert (id-inserted_sub_id)  )
 (assert (prep_id-relation-anu_ids))
 (assert (missing-level-id) )
 (assert (id-original_word) )
 (assert (id-number-src) )
 (assert (verb_type-verb-causative_verb-tam) )
 (assert (addition-level-word-sid) )
 (assert (conjunction-components))
 (assert (id-wsd_number) )
 (assert (affecting_id-affected_ids-wsd_group_root_mng))
 (assert (affecting_id-affected_ids-wsd_group_word_mng))
 (assert (id-last_word) )
 (assert (verb_agrmt-subject_id-head_id))
 (assert (verb_agrmt-object_id-head_id) )
 (assert (verb_agrmt-head_id))
 (assert (id-gender-src))
 (assert (id-original_word))
 (assert (id-HM-source))
 (assert (No complete linkages found))
 (assert (conj_head-left_head-right_head))
 (assert (id-cat))
 (assert (id-cat_coarse)) 
 (assert (id-E_tam-H_tam_mng))
 (assert (id-E_tam-H_tam_template_mng))
 )

 (deffunction print_debug_info(?id ?rule_name ?g ?g_src ?n ?n_src ?p ?p_src ?c ?c_src)
	(if (eq ?n_src n_f_s) then (bind ?n_src number_from_subject))
	(if (eq ?n_src n_f_v) then (bind ?n_src number_from_viSeRya))
	(if (eq ?p_src p_f_s) then (bind ?p_src person_from_subject))
	(if (eq ?p_src p_f_v) then (bind ?p_src person_from_viSeRya))
	(if (eq ?g_src g_f_s) then (bind ?g_src gender_from_subject))
	(if (eq ?g_src g_f_v) then (bind ?g_src gender_from_viSeRya))
 	(if (eq ?c 0) then (bind ?c " ")) 	(if (eq ?c_src 0) then (bind ?c_src " "))
	(printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-per_src-case  " ?id "  "?rule_name"  "?g" "?g_src" "?n"  "?n_src" "?p"  "?p_src" "?c" "?c_src ")" crlf)
 )
  
 ;================================ PP pada for vibakthi=0 and vibhakti!=0 ======================================
 ; If "I"  then  gender=- number=s and peson=u
 ;This book is mine.
 (defrule PP_pada_for_I_me_and_my
 (declare (salience 1000))
 ?f1<-(pada_info (group_head_id ?pada_id)(group_cat PP)(group_ids $?ids)(vibakthi ?vib))
 (id-original_word ?pada_id I|i|my|My|me|mine)
 (id-gender-src ?pada_id ?gen ?gen_src)
 ?f0<-(pada_control_fact ?pada_id)
 =>
	(retract ?f0)
	(if (eq ?vib 0) then
		(modify ?f1 (gender ?gen)(number s)(person u)(case d))
		(print_debug_info ?pada_id PP_pada_for_I_me_and_my ?gen ?gen_src s Direct u Direct d vibakthi_absent)
	else			
	        (modify ?f1 (gender ?gen)(number s)(person u)(case o))
		(print_debug_info ?pada_id PP_pada_for_I_me_and_my ?gen ?gen_src s Direct u Direct o vibakthi_present)
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
		(print_debug_info ?pada_id PP_pada_for_He m Direct s Direct a Direct d vibakthi_absent)
	else
	        (modify ?f1 (gender m)(number s)(person a)(case o))
		(print_debug_info ?pada_id PP_pada_for_He m Direct s Direct a Direct o vibakthi_present)
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
		(print_debug_info ?pada_id PP_pada_for_She f Direct s Direct a Direct d vibakthi_absent)
	else
	        (modify ?f1 (gender f)(number s)(person a)(case o))
		(print_debug_info ?pada_id PP_pada_for_She f Direct s Direct a Direct o vibakthi_present)
	)
 )
 ;----------------------------------------------------------------------------------------------------------------
 ;We had wasted our journey.
 (defrule PP_pada_for_we_our_and_us
 (declare (salience 1000))
 ?f1<-(pada_info (group_head_id ?pada_id)(group_cat PP)(group_ids $?ids)(vibakthi ?vib))
 (id-original_word ?pada_id  We|we|our|Our|ours|us)
 (id-gender-src ?pada_id ?gen ?gen_src)
 ?f0<-(pada_control_fact ?pada_id)
 =>
	(retract ?f0)
	(if (eq ?vib 0) then
		(modify ?f1  (gender ?gen)(number p)(person u)(case d))
		(print_debug_info ?pada_id PP_pada_for_we_our_and_us ?gen ?gen_src p Direct u Direct d vibakthi_absent)
	else
		(modify ?f1 (gender ?gen)(number p)(person u)(case o))
		(print_debug_info ?pada_id PP_pada_for_we_our_and_us ?gen ?gen_src p Direct u Direct o vibakthi_present)
	)
 )
 ;----------------------------------------------------------------------------------------------------------------
 ;Their belongings were flung about the room.
 (defrule PP_pada_for_they_their_and_them
 (declare (salience 1000))
 ?f1<-(pada_info (group_head_id ?pada_id)(group_cat PP)(group_ids $?ids)(vibakthi ?vib))
 (id-original_word ?pada_id  They|they|their|Their|them)
 (id-gender-src ?pada_id ?gen ?g_src)
 ?f0<-(pada_control_fact ?pada_id)
 =>
        (retract ?f0)
        (if (eq ?vib 0) then
                (modify ?f1  (gender ?gen)(number p)(person a)(case d))
		(print_debug_info ?pada_id PP_pada_for_they_their_and_them ?gen ?g_src p Direct a Direct d vibakthi_absent)
        else
                (modify ?f1 (gender ?gen)(number p)(person a)(case o))
		(print_debug_info ?pada_id PP_pada_for_they_their_and_them ?gen ?g_src p Direct a Direct o vibakthi_present)
        )
 )
 ;----------------------------------------------------------------------------------------------------------------
 ;That is because you are a girl.
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
 		(modify ?f1 (gender ?gen)(number -)(person a)(case o))
		(print_debug_info ?pada_id PP_pada_for_you ?gen ?gen_src - Direct a Direct o vibakthi_present)
	else
                (modify ?f1 (gender ?gen)(number -)(person m)(case o))
		(print_debug_info ?pada_id PP_pada_for_you ?gen ?gen_src - Direct m Direct o vibakthi_present)
	)
  )
 ;----------------------------------------------------------------------------------------------------------------
 ;Ex. There are three boys and four girls in the park . Added by Sukhada.
 ; if both are singular for and case then num is plural suggested by Dipti mam
 (defrule PP_pada_for_and
 (declare (salience 910))
 ?f1<- (pada_info (group_head_id ?pada_id)(group_cat PP)(group_ids $?word_ids) (vibakthi ?vib))
 (id-original_word ?pada_id and)
 (id-gender-src ?pada_id ?gen ?gen_src)
 ?f0<-(pada_control_fact ?pada_id)
 =>
	(retract ?f0) 
	(if (eq ?vib 0) then
                (modify ?f1 (gender ?gen)(number p)(person a)(case d))
		(print_debug_info ?pada_id PP_pada_for_and ?gen ?gen_src p Direct a Direct d vibakthi_absent)
        else
                (modify ?f1 (gender ?gen)(number p)(person a)(case o))
		(print_debug_info ?pada_id PP_pada_for_and ?gen ?gen_src p Direct a Direct o vibakthi_present)
        )
 )
 ;----------------------------------------------------------------------------------------------------------------
 ; default peson = a
 (defrule PP_pada
 (declare (salience 900))
 ?f1<-(pada_info (group_head_id ?pada_id)(group_cat PP|infinitive)(group_ids $?ids)(vibakthi ?vib))
 (id-original_word ?pada_id  ?pada_head)
 (id-gender-src ?pada_id ?gen ?gen_src)
 (id-number-src ?pada_id ?num ?num_src)
 ?f0<-(pada_control_fact ?pada_id)
 =>
	(retract ?f0)
        (if (eq ?vib 0) then
	        (modify ?f1 (gender ?gen)(number ?num)(person a)(case d))
		(print_debug_info ?pada_id PP_pada ?gen ?gen_src ?num ?num_src a Direct d vibakthi_absent)
	else 
        	(modify ?f1 (gender ?gen)(number ?num)(person a)(case o))
		(print_debug_info ?pada_id PP_pada ?gen ?gen_src ?num ?num_src a Direct o vibakthi_present)
	)
 )
 ;================================== subject-subject_samAnAXikaraNa ==========================================
 ; if subject gen is "-" and samAnAXikaraNa gen is not equal to "-"
 (defrule samAnAXikaraNa_to_sub
 (declare (salience 800))
 (prep_id-relation-anu_ids ? subject-subject_samAnAXikaraNa|saMjFA-saMjFA_samAnAXikaraNa ?sub_id ?samAna_id)
 ?f1<-(pada_info (group_head_id ?samAna_id)(group_cat PP)(gender ?gen)(number ?num1)(person ?per1))
 ?f2<-(pada_info (group_head_id ?sub_id)(group_cat PP)(gender -)(number ?num)(person ?per))
 (test (neq ?gen -))
 (not(samAnAXikaraNa_id_checked ?samAna_id))
 =>
   	(if (eq ?num1 -) then
       		(modify ?f1 (gender ?gen)(number ?num)(person ?per1))
		(print_debug_info ?samAna_id samAnAXikaraNa_to_sub ?gen PV ?num n_f_s ?per PV 0 0)
   	else
	     	(modify ?f1 (gender ?gen)(number ?num1)(person ?per1))
		(print_debug_info ?samAna_id samAnAXikaraNa_to_sub ?gen PV ?num PV ?per PV 0 0)
   	)
	(modify ?f2 (gender ?gen) )
	(print_debug_info ?sub_id samAnAXikaraNa_to_sub ?gen gender_from_samAnAXikaraNa ?num PV  ?per PV 0 0)
	(assert (samAnAXikaraNa_id_checked ?samAna_id))
 )
 ;----------------------------------------------------------------------------------------------------------------
 ; if  samAnAXikaraNa gen is "-" and subject gen is not equal to "-"
 (defrule sub_to_samAnAXikaraNa
 (declare (salience 790))
 (prep_id-relation-anu_ids ? subject-subject_samAnAXikaraNa|saMjFA-saMjFA_samAnAXikaraNa ?sub_id ?samAnAXikaraNa_id)
 ?f1<-(pada_info (group_head_id ?samAnAXikaraNa_id)(group_cat PP)(person ?per1)(gender -)(number ?num1))
 ?f2<-(pada_info (group_head_id ?sub_id)(group_cat PP)(gender ?gen)(number ?num)(person ?per))
 (test (neq ?gen -))
 (not(samAnAXikaraNa_id_checked ?samAnAXikaraNa_id))
 =>
	(if (eq ?num1 -) then
	 	(modify ?f1 (gender ?gen)(number ?num)(person ?per1))
		(print_debug_info ?samAnAXikaraNa_id sub_to_samAnAXikaraNa ?gen g_f_s ?num n_f_s ?per1 PV 0 0)
	else
		(modify ?f1 (gender ?gen)(number ?num1)(person ?per1))
		(print_debug_info ?samAnAXikaraNa_id sub_to_samAnAXikaraNa ?gen g_f_s ?num PV ?per1 PV 0 0)
	)
	(assert (samAnAXikaraNa_id_checked ?samAnAXikaraNa_id))
 )
 ;----------------------------------------------------------------------------------------------------------------
 ; if  samAnAXikaraNa gen is not equal to "-" and subject gen is not equal to "-" but the gender for both is same
 (defrule sub_and_samA_with_same_gender
 (declare (salience 770))
 (prep_id-relation-anu_ids ? subject-subject_samAnAXikaraNa|saMjFA-saMjFA_samAnAXikaraNa ?sub_id ?samAnAXikaraNa_id)
 ?f1<-(pada_info (group_head_id ?samAnAXikaraNa_id)(group_cat PP)(person ?per1)(gender ?gen)(number ?num1))
 ?f2<-(pada_info (group_head_id ?sub_id)(group_cat PP)(gender ?gen)(number ?num)(person ?per)(case ?case))
 (not(samAnAXikaraNa_id_checked ?samAnAXikaraNa_id))
 (test (neq ?gen -))
 =>
	(if (eq ?num1 -) then
		(modify ?f1 (gender ?gen)(number ?num)(person ?per1))
		(print_debug_info ?samAnAXikaraNa_id sub_and_samA_with_same_gender ?gen PV ?num n_f_s ?per PV 0 0)
	else
		(modify ?f1 (gender ?gen)(number ?num1)(person ?per1))
		(print_debug_info ?samAnAXikaraNa_id sub_and_samA_with_same_gender ?gen PV ?num PV ?per PV 0 0)
	)
	(assert (samAnAXikaraNa_id_checked ?samAnAXikaraNa_id))
 )
 ;----------------------------------------------------------------------------------------------------------------
 ; if  samAnAXikaraNa gen is not equal to "-" and subject gen is not equal to "-" but the gender for both is different
 ;That's because you're a girl. (number example)
 (defrule sub_and_samA_with_different_gender
 (declare (salience 760))
 (prep_id-relation-anu_ids ? ?rel&subject-subject_samAnAXikaraNa|saMjFA-saMjFA_samAnAXikaraNa ?sub_id ?samAna_id)
 ?f1<-(pada_info (group_head_id ?samAna_id)(group_cat PP)(vibakthi ?vib)(gender ?gen1)(number ?num1) (person ?per1))
 ?f2<-(pada_info (group_head_id ?sub_id)(group_cat PP)(gender ?gen)(number ?num)(person ?per)(case ?case))
 (id-original_word ?samAna_id  ?word)
 (not(samAnAXikaraNa_id_checked ?samAna_id))
 (test (and (neq ?gen1 -)(neq ?gen -)(neq ?gen ?gen1)))
 =>
	(printout  ?*error_file* crlf "The ids " ?sub_id " and " ?samAna_id" have "?rel"  relation "crlf "And the gender information for the ids are different ---------   " ?sub_id"-"?gen "  "?samAna_id "-" ?gen1 crlf "if saMjFA/subject id ("?sub_id") word is \"She\" then consider gender as f "crlf "else By default considering the samAnAXikaraNa id gender i.e., "?samAna_id " - " ?gen1 crlf crlf)
	(close ?*error_file*)
	(if (eq ?word She) then
		(if (eq ?num1 -) then
		   (modify ?f1 (gender f)(number ?num)(person ?per1))
	    	   (print_debug_info ?samAna_id sub_and_samA_with_different_gender f from_word_She ?num n_f_s ?per p_f_s 0 0)
		else
		    (modify ?f1 (gender f)(number ?num1)(person ?per1))
		    (print_debug_info ?samAna_id sub_and_samA_with_different_gender f from_word_She ?num PV ?per PV 0 0)
		)
		(assert (samAnAXikaraNa_id_checked ?samAna_id))
	else
		(if (eq ?num1 -) then
			(modify ?f1 (gender ?gen1)(number ?num)(person ?per1))
			(print_debug_info ?samAna_id sub_and_samA_with_different_gender ?gen1 PV ?num n_f_s ?per p_f_s 0 0)
		else
			(modify ?f1 (gender ?gen1)(number ?num1)(person ?per1))
			(print_debug_info ?samAna_id sub_and_samA_with_different_gender ?gen1 PV ?num1 PV ?per PV 0 0)
		)
		(assert (samAnAXikaraNa_id_checked ?samAna_id))
	)
 )
 ;------------------------------------------------------------------------------------------------------------------------
 ;sharing gender and number info of "and" to the "and components" if they are adjective
 ;She is ugly and fat. He is deaf and dumb.
 (defrule sub_and_samA_with_and
 (declare (salience 750))
 (prep_id-relation-anu_ids ? subject-subject_samAnAXikaraNa|saMjFA-saMjFA_samAnAXikaraNa ?sub_id ?samAnAXikaraNa_id)
 (id-original_word ?samAnAXikaraNa_id and)
 (conj_head-left_head-right_head ?samAnAXikaraNa_id ?lt_h ?rt_h)
 (pada_info (group_head_id ?samAnAXikaraNa_id) (group_cat PP) (gender ?gen) (number ?num))
 ?f0<-(pada_info (group_head_id ?lt_h))
 ?f1<-(pada_info (group_head_id ?rt_h))
 (and (id-cat_coarse ?lt_h adjective)(id-cat_coarse ?rt_h adjective))
 (not (modified_and_compnents ?samAnAXikaraNa_id))
 =>
	(retract ?f0 ?f1)
	(modify ?f0 (gender ?gen) )
;	(modify ?f0 (gender ?gen) (number ?num))
;	(modify ?f1 (gender ?gen) (number ?num))
	(modify ?f1 (gender ?gen) )
	(assert (modified_and_compnents ?samAnAXikaraNa_id))
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
	      (print_debug_info ?id jo_samAnAXikaraNa_rule ?gen g_f_v ?num n_f_v ?per p_f_v d vibakthi_absent)
	else
	      (modify ?f1 (gender ?gen) (number ?num) (case o) (person ?per))
	      (print_debug_info ?id jo_samAnAXikaraNa_rule ?gen g_f_v ?num n_f_v ?per p_f_v o vibakthi_present)
	)
  	(assert (jo_samAnAXikaraNa_checked ?id))
 )
 ;----------------------------------------sub insertion rule --------------------------------------------------------------
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
	      (print_debug_info 10001 subject_insertion_rule ?gen g_f_s ?num n_f_s ?per p_f_s d vibakthi_absent)
        else
              (modify ?f2 (gender ?gen) (number ?num) (case o) (person ?per))
	      (print_debug_info 10001 subject_insertion_rule ?gen g_f_s ?num n_f_s ?per p_f_s o vibakthi_present)
        )
 )
 ;----------------------------------------------------------------------------------------------------------------------
 ;Her hard work and talent will take her to the top .
 ;if gender is - then check for the gen in group ids
 (defrule gender_for_hyphen
 (declare (salience 780))
 ?f1<-(pada_info (group_head_id ?pada_id)(gender -)(group_ids $?ids)(group_cat PP))
 (id-gender-src ?id ?gen ?gen_src)
 (test (member$ ?id $?ids))
 (not (prep_id-relation-anu_ids ?p viSeRya-jo_samAnAXikaraNa  ? ?pada_id))
 (test (neq ?gen -))
 =>
        (modify ?f1 (gender ?gen))
        (printout ?*gnp_debug* "(pada_id-rule_name-gen_src " ?pada_id " gender_for_hyphen  "?gen " group_id )" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------
 ; Sita and Gita came here .
 ; Rama and Sita came here .
 ; Added by Mahalaxmi (17-04-10) Suggested by Sukhada.
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
 (declare (salience 750))
 ?f1<-(pada_info (group_head_id ?pada_id)(group_ids $?ids)(group_cat PP))
 (id-gender-src ?id  f ?gen_src)
 (id-gender-src ?id1 m  ?gen_src1)
 (test (and (member$ ?id $?ids) (member$ ?id1 $?ids)))
 (test (and (neq ?id ?pada_id)(neq ?id ?pada_id)))
 (not (prep_id-relation-anu_ids ?p viSeRya-jo_samAnAXikaraNa  ? ?pada_id))
 ?f2<-(id-original_word ?pada_id and|And)
 =>
     (retract ?f2)
     (modify ?f1 (gender m))
     (printout ?*gnp_debug* "(pada_id-rule_name-gen_src " ?pada_id " gender_for_hyphen_with_head_and  m  "?gen_src ")" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju Suggested by Sukhada (08-12-11)
 ;She is beautiful and intelligent.
 (defrule modify_gender_for_and
 (declare (salience 710))
 (id-original_word ?pada_id and)
 (prep_id-relation-anu_ids - subject-subject_samAnAXikaraNa ?sub ?pada_id)
 (pada_info (group_head_id ?pada_id)(group_ids $?d)(gender ?gen))
 ?f1<-(id-gender-src ?id ? ?gen_src)
 (test (member$ ?id $?d))
 =>
        (retract ?f1)
        (printout ?*gender* "(id-gender-src "?id "  "?gen"   subject-subject_samAnAXikaraNa)" crlf)
        (printout ?*gnp_debug* "(pada_id-rule_name-gen_src " ?pada_id " modify_gender_for_and "?gen" subject-subject_samAnAXikaraNa)" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------
 ;John screamed from inside the house .
 (defrule default_gender_m_for_pada
 (declare (salience 700))
 ?f1<-(pada_info (group_head_id ?pada_id)(gender -))
 =>
        (modify ?f1 (gender m))
  (printout ?*gnp_debug* "(pada_id-rule_name-gen_src " ?pada_id " default_gender_m_for_pada  m Default_assignment)" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju 22-01-13 (Suggested by Chaitanya Sir)
 ;If the object is released from rest, the initial potential energy is completely converted into the kinetic energy of the object just before it hits the ground.
 (defrule default_gnp_for_new_word
 (declare (salience 650))
 ?f0<-(pada_info (group_head_id 10001) (group_cat PP) (group_ids 10001) (vibakthi ?vib) (gender 0) (number 0)(person 0))
 =>
        (if (eq ?vib 0) then
        	(modify ?f0 (gender m)(number s)(person a)(case d))
	      	(print_debug_info 10001 default_gnp_for_new_word m Direct s Direct a Direct d vibakthi_absent)
        else
                (modify ?f0 (gender m)(number s)(person a)(case o))
	      	(print_debug_info 10001 default_gnp_for_new_word m Direct s Direct a Direct o vibakthi_present)
        )
 )
 ;-------------------------------------------------------------------------------------------------------------------
 ;Did you take your breakfast?
 (defrule default_number_for_pada
 (declare (salience 600))
 ?f1<-(pada_info (group_head_id ?id)(number -))
 (id-original_word ?id ?word)
 =>
        (if (or (eq ?word you)(eq ?word You)) then
        	(modify ?f1 (number p))
  		(printout ?*gnp_debug* "(pada_id-rule_name-gen_src "?id" default_number_for_pada  p from_word_you)" crlf)
        else
                (modify ?f1 (number s))
  		(printout ?*gnp_debug* "(pada_id-rule_name-gen_src "?id" default_number_for_pada  s Default_assignment)"crlf)
        )
 )
 ;-------------------------------------------------------------------------------------------------------------------
 ;America economic indicators fell sharply last month .
 ;The party that night was a big success.  Last week I saw a great movie .
 (defrule case_for_kAlavAcI
 (declare (salience 590))
 ?f1<-(pada_info (group_head_id ?pada_id)(group_cat PP)(group_ids $?ids)(vibakthi ?vib))
 ?f0<-(prep_id-relation-anu_ids  ? kriyA-kAlavAcI  ?kri ?pada_id)
 =>
        (retract ?f0)
        (modify ?f1 (case o))
        (printout ?*gnp_debug* "(pada_id-rule_name-case_src " ?pada_id " case_for_kAlavAcI     o    kAlavAcI_relation)" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju Suggested by Sukhada (20-07-15)
 ;United Illuminating is based in New Haven, Conn., and Northeast is based in Hartford, Conn..
 ;yUnAitada ilUmaneVtifa nU heVvana, koYna meM AXAriwa hE, Ora noVrWIsta hoYrtParda, koYna meM AXAriwa hE.
 (defrule case_for_saMjFA
 (declare (salience 590))
 ?f<-(prep_id-relation-anu_ids - saMjFA-saMjFA_samAnAXikaraNa  ?s_id ?sam_id)
 (pada_info (group_head_id ?sam_id) (vibakthi ?v))
 (test (neq ?v 0))
 ?f0<-(pada_info (group_head_id ?s_id))
 =>
	(retract ?f)
	(modify ?f0 (case o))
        (printout ?*gnp_debug* "(pada_id-rule_name-case_src " ?s_id " case_for_saMjFA     o    saMjFA-saMjFA_samAnAXikaraNa_relation)" crlf)
 )
 ;-------------------------------------------------------------------------------------------------------------------
 ;We see leaves falling from trees and water flowing down a dam.
 ;He stopped killing of animals and birds throughout his kingdom. 
 ;The intelligent students study in libraries, streets, and cinema houses.
 (defrule modify_case_for_and_grp
 (declare (salience 590))
 (conj_head-left_head-right_head ? ?l_h ?r_h)
 (pada_info (group_head_id ?r_h) (vibakthi ?vib))
 (test (neq ?vib 0))
 ?f0<-(pada_info (group_head_id ?id)(case d))
 (test (or (eq ?id ?l_h) (and (> ?id ?l_h)(< ?id ?r_h))))
 =>
	(retract ?f0)
	(modify ?f0 (case o))
        (printout ?*gnp_debug* "(pada_id-rule_name-case_src " ?r_h " modify_case_for_and_grp     o    right_head)" crlf)
 )
 ;======================================= verb with or_subject agreement =======================================
 ;Are John or I invited ? 
 (defrule verb_or_sub_agmt
 (declare (salience 550))
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
	      	(print_debug_info ?kriyA verb_or_sub_agmt ?gen g_f_s ?num n_f_s ?per from_words_i/we 0 0)
        else
           	(modify ?f1 (gender ?gen)(number ?num)(person ?per))
	      	(print_debug_info ?kriyA verb_or_sub_agmt ?gen g_f_s ?num n_f_s ?per p_f_s 0 0)
	)
 )

 ;===================================  verb with subject agreement ============================================
 ;From your description, I do not think I would enjoy it.
 (defrule verb_sub_agmt
 (declare (salience 500))
 (verb_agrmt-subject_id-head_id subject ?sub_id ?kriyA)
 ?f1<-(pada_info (group_head_id ?kriyA)(group_cat VP))
 ?f2<-(pada_info (group_head_id ?sub_id)(group_cat PP)(gender ?gen)(number ?num)(person ?per)(case ?c))
 ?f0<-(pada_control_fact ?kriyA)
 (id-number-src ?kriyA ?num1 ?src)
 =>
        (retract ?f0 )
	(if (neq ?src Default) then
	        (modify ?f1 (gender ?gen)(number ?num1)(person ?per)(case ?c))
	      	(print_debug_info ?kriyA verb_sub_agmt ?gen g_f_s ?num number_from_verb ?per p_f_s ?c case_from_subject)
        	(modify ?f2 (number ?num1))
		(printout ?*gnp_debug* "(pada_id-rule_name-gen_src-num_src-person_src-VRB_GNP " ?sub_id" verb_sub_agmt "?num1"  number_from_verb )" crlf)
	else
		(modify ?f1 (gender ?gen)(number ?num)(person ?per)(case ?c))
	      	(print_debug_info ?kriyA verb_sub_agmt ?gen g_f_s ?num n_f_s ?per p_f_s ?c case_from_subject)
        )
 )

 ;=================================  verb with object agreement ================================================
 (defrule verb_obj_agmt
 (declare (salience 450))
 (verb_agrmt-object_id-head_id object ?obj_id ?kriyA)
 ?f1<-(pada_info (group_head_id ?kriyA)(group_cat VP))
 (pada_info (group_head_id ?obj_id)(group_cat PP)(gender ?gen)(number ?num)(person ?per)(case ?c))
 ?f0<-(pada_control_fact ?kriyA)
 =>
        (retract ?f0)
        (modify ?f1 (gender ?gen)(number ?num)(person ?per)(case ?c))
      	(print_debug_info ?kriyA verb_obj_agmt ?gen gender_from_object ?num number_from_object ?per person_from_object ?c case_from_object)
 )

 ;=================================  verb with kriyA_mUla agreement =============================================
 (defrule verb_kriyA_mUla_agmt
 (declare (salience 450))
 (verb_agrmt-head_id  kriyA_mula ?pada_id ?gen)
 ?f1<-(pada_info (group_head_id ?pada_id)(group_cat VP))
 (id-number-src ?pada_id ?num ?num_src)
 ?f0<-(pada_control_fact ?pada_id)
 =>
        (retract ?f0)
        (modify ?f1 (gender ?gen)(number ?num)(person a)(case d))
      	(print_debug_info ?pada_id verb_kriyA_mUla_agmt ?gen gender_from_kriyA_mula ?num ?num_src a Direct d Direct)
 )
 ;==================================  verb with default agreement =================================================
 (defrule verb_default_agmt1
 (declare (salience 400))
 (verb_agrmt-head_id default ?pada_id)
 ?f1<-(pada_info (group_head_id ?pada_id)(group_cat VP))
 ?f0<-(pada_control_fact ?pada_id)
 =>
        (retract ?f0)
        (modify ?f1 (gender m)(number s)(person a)(case d))
      	(print_debug_info ?pada_id verb_default_agmt1 m Direct s Direct a Direct d Direct)
 )
 ;===================================  verb agreement with viSeRya-kqxanwa_viSeRaNa ==============================
 ; The girl running to the shop is my friend .                      
 ; Some doors broken by the wind have been repaired.
 (defrule verb_with_viSeRya_kqxanwa_viSeRaNa
 (declare (salience 350))
 (prep_id-relation-anu_ids  ? viSeRya-kqxanwa_viSeRaNa ?vi ?pada_id)
 (pada_info (group_head_id ?vi)(gender ?gen) (number ?num)(person ?per)(case ?c))
 ?f1<-(pada_info (group_head_id ?pada_id))
 ?f0<-(id-cat_coarse ?pada_id verb)
 =>
        (retract ?f0)
        (modify ?f1 (gender ?gen)(number ?num)(person ?per)(case ?c))
      	(print_debug_info ?pada_id verb_with_viSeRya_kqxanwa_viSeRaNa ?gen g_f_v ?num n_f_v ?per p_f_v ?c case_from_viSeRya)
 )
 ;-------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju  (29-05-14)
 ;I [keep] on [thinking] I've seen her before somewhere.
 (defrule modify_gnp_for_template
 (declare (salience 100))
 (prep_id-relation-anu_ids ? kriyA-on_saMbanXI ?k ?k1)
 (id-original_word ?k keeps|kept|keep)
 ?f0<-(id-tam-src ?k1 ? Template)
 (pada_info (group_head_id ?k)(gender ?gen) (number ?num)(person ?per)(case ?c))
 ?f1<-(pada_info (group_head_id ?k1))
 =>
	(retract ?f0)
        (modify ?f1 (gender ?gen)(number ?num)(person ?per)(case ?c))
 )
 ;-------------------------------------------------------------------------------------------------------------------
 ;Added by Shirisha Manju  (08-12-11)
 (defrule default_gender_m_for_id
 (declare (salience 3))
 ?f1<-(id-gender-src ?id ?gen ?gen_src)
 =>
	(retract ?f1)
	(if (eq ?gen -) then
		(printout ?*gender* "(id-gender-src "?id "  m   Default)" crlf)
		(printout ?*gnp_debug* "(pada_id-rule_name-gen_src "?id"  default_gender_m_for_id  m  Direct)"crlf)
	else
		(printout ?*gender* "(id-gender-src "?id "  "?gen"  "?gen_src ")" crlf)
		(printout ?*gnp_debug* "(pada_id-rule_name-gen_src "?id"  default_gender_m_for_id  "?gen"  "?gen_src ")" crlf)
	)
 )
